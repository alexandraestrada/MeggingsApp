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
		if user.authenticated?(params[:user][:password])
			session[:user_id] = user.id
			redirect_to profiles_path
		else
			redirect_to new_auth_path
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end
