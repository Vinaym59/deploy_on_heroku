class TicketsController < ApplicationController

  def new
    @ticket = Ticket.new
  end

  def index
    @tickets = Ticket.all
  end

  def create
    binding.pry
    @ticket = Ticket.create(ticket_params)
    if @ticket.save
      redirect_to ticket_path(@ticket)
    else
      render 'new'
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update_attributes(ticket_params)
    redirect_to tickets_path
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def destroy
    @ticket = Ticket.find(params[:id]).delete
    redirect_to tickets_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(:name, :seat_id_seq, :price_paid, :email_address)
  end
end
