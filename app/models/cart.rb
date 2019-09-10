class Cart < ApplicationRecord
  belongs_to :customer
  has_many :cart_items

  def total
    cart_items.inject(0) do |memo, item| 
      memo += item.quantity * item.value
    end
  end
end
