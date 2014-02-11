class ProfilesController < ApplicationController
	def index
		@meggings = Megging.all
	end
	def new
	end

	def create
	end

	def show
    @megging = Megging.find(params[:id])
  	end

	def destroy
    megging = Megging.find(params[:id])
    megging.destroy
    redirect_to action: :index
  	end
  
end
