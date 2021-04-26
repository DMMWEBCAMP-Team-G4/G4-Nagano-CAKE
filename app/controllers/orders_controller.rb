class OrdersController < ApplicationController
  
  def new
    @order = Order.new
    @shipping_addresses = current_member.addresses
  end
  
  def log
    @cart_items = current_member.cart_items
    @order = Order.new(member: current_member, method_of_payment: params[:order][:method_of_payment])
      if params[:order][:select_address] == "residence"
        @order.shipping_postal_code = current_member.postal_code
        @order.shipping_address = current_member.address
        @order.receiver = current_member.last_name + current_member.first_name
      elsif params[:order][:select_address] == "shipping_address"
        ship = Address.find(params[:order][:address_id])
        @order.shipping_postal_code = ship.shipping_postal_code
        @order.shipping_address = ship.shipping_address
        @order.receiver = ship.receiver
      elsif params[:order][:select_address] == "new_address"
        @order.shipping_postal_code = params[:order][:shipping_postal_code]
        @order.shipping_address = params[:order][:shipping_address]
        @order.receiver = params[:order][:receiver]
        @ship = "1"
      end
  end

  def create
    @order = Order.new(order_params)
    @order.save(order_params)
    redirect_to thanx_orders_path
    
    if params[:order][:ship] == "1"
      current_member.address.create(address_params)
    end
    
    @cart_items = current_member.cart_items
    @cart_items.each do |cart_item|
      OrderProduct.create(product: cart_item.product, order: @order, number: cart_item.number)
    end
    @cart_items.destroy_all
  end
  
  def thanx
  end

  def index
    @orders = current_member.orders
  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end
  
  private
  
  def order_params
    params.require(:order).permit(:member_id, :shipping_postal_code, :shipping_address, :receiver, :method_of_payment, :total_fee, :select_address)
  end
  
  def address_params
    params.require(:order).permit(:shipping_postal_code, :shipping_address, :receiver)
  end
end
