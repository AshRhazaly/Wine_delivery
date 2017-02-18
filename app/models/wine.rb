class Wine < ApplicationRecord
  has_many :orders, :dependent => :destroy
  validates :name, :description, :year, :price,
            presence: true
  has_attached_file :image, styles: { large: "350x500", medium: "250x250>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
