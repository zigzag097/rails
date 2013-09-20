class StatesController < ApplicationController
	def new
		@state =State.new
	end
	
	def create
	@state = State.new(state_params)
    if @state.save
      flash[:success] = "State Created!"
      redirect_to @state
    else
      render 'new'
    end
	end
	
	def show
    @state = State.find(params[:id])
	end
	
	private

    def state_params
      params.require(:state).permit(:statename)
    end
end
