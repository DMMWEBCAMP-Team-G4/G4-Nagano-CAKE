class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cart_items
  has_many :addresses

  def full_name
    self.last_name + " " + self.first_name
  end
  
  def active_for_authentication?
    super && (self.member_status == false)
  end


end
