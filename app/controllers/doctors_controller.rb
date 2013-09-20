class DoctorsController < ApplicationController
	def new
		@doctor = Doctor.new
	end
	def create
		@doctor= Doctor.new(doctor_params)
		@doctor.save
	end
	
	private

    def doctor_params
      params.require(:doctor).permit(:doctor_name)
    end
end
