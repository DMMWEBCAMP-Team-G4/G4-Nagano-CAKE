class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
  end

end
