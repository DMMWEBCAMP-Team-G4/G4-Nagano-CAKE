class CartItem < ApplicationRecord
  belongs_to :member
  belongs_to :product
  
  def tax_price
    (self.price * 1.10).round
  end
  
  def sub_price
    (self.price * number).round
  end
  
end
