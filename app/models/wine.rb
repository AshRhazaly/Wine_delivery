class Wine < ApplicationRecord
  has_many :orders, :dependent => :destroy
  validates :name, :description, :year, :price,
            presence: true

end
