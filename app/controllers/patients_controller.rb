class PatientsController < ApplicationController
	def new
		@patient = Patient.new
	end
	def create
		@patient= Patient.new(patient_params)
		@patient.save
	end
	def show
		@doctors=Doctor.find(:all)
		byebug
	end
	
	private

    def patient_params
      params.require(:patient).permit(:patient_name)
    end
end
