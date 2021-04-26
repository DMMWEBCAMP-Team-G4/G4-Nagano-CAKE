shipping_postal_code: current_member.postal_code, shipping_address: current_member.address, receiver: current_member.last_name+current_member.first_name

        @order.shipping_postal_code = current_member.postal_code
        @order.shipping_address = current_member.address
        @order.receiver = current_member.last_name + current_member.first_name
      elsif params[:order][:shipping_address] == "shipping_address"
        ship = Address.find(params[:order][:address_id])
        @order.shipping_postal_code = ship.shipping_postal_code
        @order.shipping_address = ship.shipping_address
        @order.receiver = ship.receiver
      elsif params[:order][:shipping_address] == "new_address"
        @order.shhiping_postal_code = params[:order][:shipping_postal_code]
        @order.shipping_address = params[:order][:shipping_address]
        @order.receiver = params[:order][:receiver]
      end