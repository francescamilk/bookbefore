class Order < ApplicationRecord
    has_many :order_dishes
    has_many :dishes, through: :order_dishes
  
    validates :booking_code, presence: true, uniqueness: true
end
