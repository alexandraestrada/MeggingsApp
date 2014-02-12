class ShoppingCartsController < ApplicationController
  def new
    @shoppingCart = ShoppingCart.new
  end

  def show
  end

  def update
  end

  def edit
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
  end
end
