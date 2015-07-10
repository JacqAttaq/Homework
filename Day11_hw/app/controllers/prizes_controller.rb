class PrizesController < ApplicationController
	def new
	@prize = Prize.new
	end

	def create
	@prize = Prize.new que_params
	@prize.save
	redirect_to root_path
	end

	def edit
	@prize = Prize.find params[:id]
	end

	def update
		@prize= Prize.find params[:id]
		@prize.update_attributes que_params
		redirect_to root_path
	end

	def show
		@prize = Prize.find params[:id]
	end


private
	def que_params
    params.require(:prize).permit(
    	:name)
    end
end

