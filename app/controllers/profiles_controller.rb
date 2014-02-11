class ProfilesController < ApplicationController
	def index
		@meggings = Megging.all
	end
	def new
	end
	def create
	end
end
