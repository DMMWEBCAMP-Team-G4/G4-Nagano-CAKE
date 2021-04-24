class Product < ApplicationRecord

  belongs_to :genre
  has_many :cart_items,dependent: :destroy
  has_many :order_products,dependent: :destroy
  attachment :image

  def tax_price
      (self.price * 1.10).round
  end

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :is_active, presence: true
  validates :image, presence: true

end
