class PatientsController < ApplicationController
	before_action :get_patient, only: %i[show recommendations]

	def index
		@patients = Patient.all

		render json: @patients
	end

	def show
		render json: @patient
	end

	def recommendations
		@recommendations = patient.recommendations
		render json: @recommendations
	end

	def get_medical_data
		response = get_request('/InitSession')
		session = JSON.parse(response)["SessionID"]
		terms_of_use_url = [
			'https://api.endlessmedical.com/v1/dx',
			'AcceptTermsOfUse?SessionID=',
			session,
			'&passphrase=I%20have%20read%2C%20understood%20and%20I%20accept%20and%20agree%20to%20comply%20with%20the%20Terms%20of%20Use%20of%20EndlessMedicalAPI%20and%20Endless%20Medical%20services.%20The%20Terms%20of%20Use%20are%20available%20on%20endlessmedical.com'
		]
		
		terms_of_use_acceptance = Net::HTTP.post(URI(terms_of_use_url.join('')), {}.to_json, 'Content-Type' => 'application/json')


		Net::HTTP.post(URI("https://api.endlessmedical.com/v1/dx/UpdateFeature?SessionID=#{session}&name=Age&value=#{50}"), {}.to_json, 'Content-Type' => 'application/json')
		response = get_request('/GetFeatures')
		result = JSON.parse(response)['data'].join(' ')
		p result


		render json: response
	end

	private

	def get_request(additional_url_part)
		base_url = "https://api.endlessmedical.com/v1/dx"
		Net::HTTP.get(URI(base_url + additional_url_part))
	end

	def get_patient
		@patient = Patient.find(params[:id])
	end
end