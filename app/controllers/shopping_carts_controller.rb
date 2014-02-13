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

  def show
   @shopping_cart = current_user.shopping_cart
  end


 

  def destroy
    megging = Megging.find(params[:megging_id])
    megging.destroy
    redirect_to shopping_cart_path
  end
end
