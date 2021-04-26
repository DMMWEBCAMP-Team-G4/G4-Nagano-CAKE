class Admin::OrdersController < ApplicationController

  def index
    if params[:member_id]
      @orders=Order.where(member_id: params[:member_id]).page(params[:page]).per(10)
    else
      @orders=Order.all.page(params[:page]).per(10)
    end
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
    params.require(:order).permit(:member_id,:making_status)
  end
end
