class Order < ApplicationRecord
  belongs_to :wine
  validates :cust_name, :email, :address,
            :quantity, presence: true
end
