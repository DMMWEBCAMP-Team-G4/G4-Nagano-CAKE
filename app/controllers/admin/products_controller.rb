class Admin::ProductsController < ApplicationController
  
  def new
    @product=Product.new
  end
  
  def create
    @product=Product.new(product_params)
    @product.save
    redirect_to admin_product_path(@product.id)
  end

  def index
    @products=Product.all
  end

  def show
  end

  def edit
  end
  
  private
  
  def product_params
    params.require(:product).permit(:image_id,:name,:description,:genre_id,:price,:is_active)
  end
  
end
