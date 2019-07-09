class RequestForQuotationsController < ApplicationController
  def index
    @request_for_quotations = RequestForQuotation.all
  end

  def show
    @request_for_quotation = RequestForQuotation.find(params[:id])
  end

  def new
    @request_for_quotation = RequestForQuotation.new
  end

  def create
    @request_for_quotation = RequestForQuotation.(request_for_quotation_params)
    redirect_to new_request_for_quotation_path
  end

  def request_for_quotation_params
    params.require(:request_for_quotation).permit(:competency, :resource, :efforts)
  end
end
