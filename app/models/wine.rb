class Wine < ApplicationRecord
  has_many :orders, :dependent => :destroy
  validates :name, :description, :year, :price,
            presence: true

  def self.search(search)
    where("name LIKE ? OR description LIKE ? OR year LIKE ? OR price LIKE ?",
     "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
