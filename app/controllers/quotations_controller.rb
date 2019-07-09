class QuotationsController < ApplicationController

  # validates :project_type, presence: true,
                    # length: { minimum: 5 }

  def index
    @quotations = Quotation.all
  end

  def show
    @quotation = Quotation.find(params[:id])
  end

  def new
    @quotation = Quotation.new
  end

  def create
    @quotation = Quotation.create(quotation_params)
    binding.pry
    if @quotation.save
      redirect_to @quotation
    else
      render 'new'
    end
  end


  private

  def quotation_params
    params.require(:quotation).permit(:project_name, :client_name, :project_type)
  end
end
