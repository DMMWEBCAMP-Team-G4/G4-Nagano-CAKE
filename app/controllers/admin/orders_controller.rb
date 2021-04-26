class Admin::OrdersController < ApplicationController

  def index
    @orders=Order.all.page(params[:page]).per(10)
  end

  def show
    @order = Order.find(params[:id])
    @order_products = @order.order_products
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admin_order_path(@order)
  end
  
  private
  
  def order_params
    params.require(:order).permit(:making_status)
  end
end
