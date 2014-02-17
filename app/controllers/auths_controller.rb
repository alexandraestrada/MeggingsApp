class AuthsController < ApplicationController
  

  def new
  	if current_user 
  		redirect_to profiles_path
  	else
  		@user = User.new
  	end
  end

  

  def create
		user = User.find_by(username: params[:user][:username])
		if user && user.authenticated?(params[:user][:password])
			session[:user_id] = user.id
			redirect_to profiles_path
		else
			flash[:error] = "Incorrect username or password."
			redirect_to new_user_path

		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end

	


end
