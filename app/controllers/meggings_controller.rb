class MeggingsController < ApplicationController
	
  def index
  	@meggings = Megging.all
  end

  def new
  	@megging = Megging.new
  end

  def create
    @megging = Megging.new(megging_params)
    if @megging.save
      redirect_to action: 'index'
      flash[:notice] = "You're megging was saved successfully" 
    else 
      render action: 'new'
    end
  end

 
#   # def update
#   #   @megging = Megging.find(params[:id])
#   #   if @megging.update_attributes(megging_params)
#   #     redirect_to action: 'index'
#   #   else 
#   #     render action: 'edit' 
#   #   end 
#   # end

 
  def show
    @megging = Megging.find(params[:id])
  end
  

 # def edit
 #    @megging = Megging.find(params[:id])
 #  end


  def update
    @megging = Megging.find(params[:id])
    if @megging.update_attributes(megging_params)
      redirect_to action: 'index'
    else 
      render action: 'edit' 
    end
  end

  def destroy
    megging = Megging.find(params[:id])
    megging.destroy
    redirect_to action: :index
  end
  


  private 

    def megging_params
      params.require(:megging).permit(
      :name, :color, :size, :tightness, :price, :photo_url)
    end

 
end
