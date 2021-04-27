class Public::HomesController < ApplicationController
  def top
    @products = Product.page(params[:page]).reverse_order
  end

  def about
  end
end
