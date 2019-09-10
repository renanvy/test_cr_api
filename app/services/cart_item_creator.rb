class CartItemCreator
  def self.create!(cart_item)
    new(cart_item).create!
  end

  def initialize(cart_item)
    @cart_item = cart_item
  end

  def create!
    ActiveRecord::Base.transaction do
      if existing_item
        update_existing_item!
      else
        create_new_item!
      end
    end
  end

  private

  attr_reader :cart_item
  
  def medicine
    @medicine ||= cart_item.medicine
  end

  def cart
    @cart ||= cart_item.cart
  end

  def existing_item
    @existing_item ||= CartItem.where(cart: cart, medicine: medicine).first
  end

  def update_existing_item!
    new_stock = (existing_item.medicine.stock + existing_item.quantity) - cart_item.quantity
    existing_item.update!(quantity: cart_item.quantity)
    existing_item.medicine.update!(stock: new_stock)
  end

  def create_new_item!
    cart.cart_items << cart_item
    cart_item.save!
    medicine.stock -= cart_item.quantity
    medicine.save!
  end
end