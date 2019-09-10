class AddValueToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_items, :value, :decimal, precision: 5, scale: 2
  end
end
