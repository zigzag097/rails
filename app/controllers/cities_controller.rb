class CitiesController < ApplicationController
	def new
		@city = City.new
		@states = State.find(:all)
	end
	
	def create
		@city = City.new(city_params)
		if @city.save
			flash[:success] = "City Created!"
		    redirect_to @city
		else
		
		end
	end
	def show
		@city=City.find(params[:id])
	end
	
	private

    def city_params
      params.require(:city).permit(:cityname, :state_id)
    end
end
