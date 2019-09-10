class Customer < ApplicationRecord
  validates :name, presence: true

  has_many :carts
end
