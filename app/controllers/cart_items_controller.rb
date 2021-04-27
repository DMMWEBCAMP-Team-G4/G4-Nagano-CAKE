class CartItemsController < ApplicationController

  def index
    @cart_items = current_member.cart_items
  end
  
  def create
    @cart_item = current_member.cart_items.new(params_cart_item)
    @update_cart_item = CartItem.find_by(product: @cart_item.product)
    if @update_cart_item.present?
      @cart_item.number += @update_cart_item.number
      @update_cart_item.destroy
    end
    @cart_item.save
    redirect_to cart_items_path
  end
  
  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(number: params[:cart_item][:number].to_i)
    redirect_to cart_items_path
  end
  
  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end
  
  def destroy_all
    @cart_items = current_member.cart_items
    @cart_items.destroy_all
    redirect_to cart_items_path
  end
  
  private
  
  def params_cart_item
    params.require(:cart_item).permit(:product_id, :number)
  end
  
end
