class Customer < ApplicationRecord
  validates :name, presence: true

  has_many :carts

  def name
    self[:name].try(:titleize)
  end
end
