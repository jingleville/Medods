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

	private
	
	def get_patient
		@patient = Patient.find(params[:id])
	end
end