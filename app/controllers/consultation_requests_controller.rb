class ConsultationRequestsController < ApplicationController
	before_action :get_patient

	def index
		@consultation_requests = @patient.consultation_requests.all

		render json: @consultation_requests, status: :ok
	end

	def show
		@consultation_request = ConsultationRequest.find_by id: params[:id]
		if @consultation_request
			render json: @consultation_request, status: :ok
		else
			error_message = { error: "consultation request not found" }
			render json: error_message, status: :not_found
		end	
	end

	def create
		@consultation_request = @patient.consultation_requests.new(consultation_request_params)
		if @consultation_request.save
			render json: @consultation_request, status: :created
			symptoms_info(@consultation_request, consultation_request_symptoms)
		else
			error_message = { error: "unable to create consultation_request" }
			render json: error_message, status: :bad_request
		end
		session = @consultation_request.patient.session_id
		recommendation = Net::HTTP.get(URI("https://api.endlessmedical.com/v1/dx/Analyze?SessionID=#{session}&NumberOfResults=10"))
		@consultation_request.recommendations.new(recommendation_body: JSON.parse(recommendation)['Diseases'])
		@consultation_request.save
	end

	def symptoms_info(consultation_request, symptoms_data)
		available_symptoms = JSON.parse(Net::HTTP.get(URI("https://api.endlessmedical.com/v1/dx/GetFeatures"))['data'])
		session = consultation_request.patient.session_id

		data.each do |symptom|
			next unless available_symptoms.include? 
			begin
				Net::HTTP.post(URI("https://api.endlessmedical.com/v1/dx/UpdateFeature?SessionID=#{session}&name=#{symptom.name}&value=#{symptom.value}"), {}.to_json, 'Content-Type' => 'application/json')
			rescue e
				p e
			end	
		end
	end

	private

	def consultation_request_params
		params.permit(:request_body)
	end

	def consultation_request_symptoms
		params.permit(:symptoms)
	end

	def get_consultation
		@consultation = @patient.consultation_requests.find(params[:id]) if @patient
	end

	def get_patient
		@patient = Patient.find(params[:patient_id])
	end
end




