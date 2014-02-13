class ShoppingCartsController < ApplicationController
  def new
    @shopping_cart = ShoppingCart.new
  end



  def add
  	if current_user.shopping_cart.nil? 
  	  current_user.create_shopping_cart
  	end
  	megging = Megging.find(params[:megging_id])
  	if megging
  		current_user.shopping_cart.meggings << megging 
  		redirect_to profiles_path
  	end
  end

  def remove
     megging = Megging.find(params[:megging_id])
     current_user.shopping_cart.meggings.delete megging 
     redirect_to shopping_cart_path
  end

  def show
   @shopping_cart = current_user.shopping_cart
  end


  def update


    @shopping_cart = current_user.shopping_cart
    copy_cart = @shopping_cart.meggings
    @shopping_cart.meggings = []

    puts "*****************sdfgsdgdg#{params[:id]}sdfgsdgfdgsdgf*************************"

    copy_cart.each do |item| 
      puts "*****************sdfgsdgdgloop#{item.id}sdfgsdgfdgsdgf*************************"
      if item.id!=params[:id]
        @shopping_cart.meggings.push item
      end
    end

    redirect_to shopping_cart_path
  end
   

private 
  def megging_params
      params.require(:megging).permit(
      :name, :color, :size, :tightness, :price, :photo_url)
    end

  # def destroy
  #   megging = Megging.find(params[:megging_id])
  #   megging.destroy
  #   redirect_to profiles_path
  # end
end
