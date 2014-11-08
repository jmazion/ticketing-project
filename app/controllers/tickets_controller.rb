class TicketsController < ApplicationController
	def index
		@tickets = Ticket.all
	end
	
	def new
		@ticket = Ticket.new
	end

	def create
		@ticket = Ticket.new(ticket_params)
		@ticket.save
		redirect_to @ticket
	end

	def edit
		@ticket = Ticket.find(params[:id])
	end

	def update
		@ticket = Ticket.find(params[:id])
		if @ticket.update(ticket_params)
			redirect_to @ticket
		else
			render 'edit'
		end
	end

	def show
		@ticket = Ticket.find(params[:id])
	end

	private
		def ticket_params
			params.require(:ticket).permit(:event_title, :event_type, :venue, :date, :time, :tickets_available, :total_tickets) 
		end
end