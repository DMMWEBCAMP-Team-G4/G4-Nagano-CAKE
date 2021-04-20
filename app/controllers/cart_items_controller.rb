class CartItemsController < ApplicationController

  def index
    @cart_items = current_cart
  end
  
  def create
    @cart_item = current_member.cart_items.new(params_cart_item)
  end
  
  def update
  end
  
  def destroy
  end
  
  def destroy_all
  end
  
  private
  
  def params_cart_item
    params.require(:cart_item).permit(:product_id, :number)
  end
  
end
