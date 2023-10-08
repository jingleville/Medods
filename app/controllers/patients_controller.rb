class PatientsController < ApplicationController
	before_action :get_patient, only: %i[show update destroy]

	def index
		@patients = Patient.all

		render json: @patients
	end

	def show
		render json: @patient
	end

	def create
		@patient.create!(patient_params)
	end

	def update
		@patient.update(patient_params)
	end

	def destroy
		@patient.destroy
	end

	private

	def patient_params
		params.permit(:full_name, :birth_date, :phone, :email)
	end

	def get_patient
		@patient = Patient.find(params[:id])
	end
end