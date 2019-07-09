class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def new
    binding.pry
    @country = Country.new
    3.times { @country.states.build }
  end

  def create
    binding.pry
    @country = Country.create(country_params)
    if @country.save
      redirect_to countries_path
    else
      render 'new'
    end
  end

  private

  def country_params
     params.require(:country).permit(:name, :location, :states_attributes => [:state_name, :state_code, :country_id] )
  end
end
