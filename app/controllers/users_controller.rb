class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

   

  def create
		user = User.create(params.require(:user).permit(:username, :password, :email))
		session[:user_id] = user.id
		redirect_to profiles_path
	end
end
