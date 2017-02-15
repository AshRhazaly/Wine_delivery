class Wine < ApplicationRecord
  has_many :custorders, :dependent => :destroy
end
