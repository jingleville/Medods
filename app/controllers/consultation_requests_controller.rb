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
		@consultation_request = ConsultationRequest.new(consultation_request_params)
		if @consultation_request.save
			render json: @consultation_request, status: :created
		else
			error_message = { error: "unable to create consultation_request" }
			render json: error_message, status: :bad_request
		end
	end

	private

	def consultation_params
		params.permit(:request_body)
	end

	def get_consultation
		@consultation = @patient.consultation_requests.find(params[:id]) if @patient
	end

	def get_patient
		@patient = Patient.find(params[:patient_id])
	end
end




