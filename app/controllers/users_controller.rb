class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
		u = User.create(params.require(:user).permit(:username, :password, :email))
		session[:user_id] = u.id
		redirect_to meggings_path
	end
end
