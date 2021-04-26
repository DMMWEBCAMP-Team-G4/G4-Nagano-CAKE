class OrdersController < ApplicationController
  
  def new
    @order = Order.new
    @address = Address.where(member: current_member)
  end
  
  def log
  end

  def create
    @order = current_member.orders.new(order_params)
    @order.save
    redirect_to orders_thanx_path
  end
  
  def thanx
  end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end
  
  private
  
  def order_params
    params.require(:order).permit(:shipping_postal_code, :shipping_address, :receiver, :method_of_payment, :total_fee)
  end
end
