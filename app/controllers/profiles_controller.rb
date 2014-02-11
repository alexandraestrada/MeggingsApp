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
end
