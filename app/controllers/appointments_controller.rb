class AppointmentsController < ApplicationController
	def new
		@appointment = Appointment.new
		@patients = Patient.find(:all)
		@doctors = Doctor.find(:all)
	end
	def create
		@appointment = Appointment.new(app_params)
		@appointment.save
	end
	
	def index
		@doctors=Patient.find(params[:patient_id]).doctors
	end
	def show
		@appointment=Appointment.find(params[:id])
		byebug
	end
	
	private

    def app_params
      params.require(:appointment).permit(:patient_id, :doctor_id)
    end
end
