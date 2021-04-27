class Address < ApplicationRecord
  belongs_to :member
  
  def order_address
    self.shipping_postal_code + self.shipping_address + self.receiver
  end
end
