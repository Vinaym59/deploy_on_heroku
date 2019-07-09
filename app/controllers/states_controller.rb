class StatesController < ApplicationController

  def new
    @state = State.new
  end

  def index
   @states = State.all
  end

  def create
    binding.pry
    @state = State.create(state_params)
    if @state.save
      redirect_to countries_path
    else
      render 'new'
    end
  end

  private

  def state_params
    params.require(:state).permit(:state_name, :state_code, :country_id)
  end

end
