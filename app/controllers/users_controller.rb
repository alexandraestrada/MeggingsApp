class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

   

  def create
    @user = User.new(user_params)
    if @user.save
        session[:user_id] = @user.id
        redirect_to profiles_path
    else
      flash[:notice] = "that's already taken!"
      redirect_to new_user_path
    end

  end

  private

  def user_params 
    params.require(:user).permit(:username, :email, :password)
  end


end

		# user = User.create(params.require(:user).permit(:username, :password, :email))
		# session[:user_id] = user.id


		# redirect_to profiles_path
	

