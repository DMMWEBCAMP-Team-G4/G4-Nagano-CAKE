class Product < ApplicationRecord

  belongs_to :genre
  # , optional: true
  has_many :cart_items,dependent: :destroy
  has_many :order_products,dependent: :destroy
  attachment :image

  def tax_price
      (self.price * 1.10).round
  end

end
