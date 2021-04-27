class AddressesController < ApplicationController


  def index
    @new_address = Address.new
    @addresses = current_member.addresses
  end

  def create
    @new_address = Address.new(address_params)
    @new_address.member_id = current_member.id
    @addresses = current_member.address
    if @new_address.save
      redirect_to addresses_path
    else
      @addresses = current_member.address
      render :index
    end
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    @address.update(address_params)
    redirect_to addresses_path

  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to addresses_path
  end

  private
  def address_params
    params.require(:address).permit(:shipping_postal_code, :shipping_address, :receiver)
  end

end
