require 'rails_helper'

RSpec.describe Cart, type: :model do
  context 'relationships' do
    it { is_expected.to belong_to :customer }
  end

  context '#total' do
    let(:customer) { create(:customer) }
    let(:amoxilina) { create(:amoxilina, value: 20.50) }
    let(:aspirina) { create(:aspirina, value: 10.00) }
    let(:cart) { create(:cart, customer: customer) }

    it 'sum cart items' do
      create(:cart_item, cart: cart, medicine: amoxilina, value: 20.50, quantity: 1)
      create(:cart_item, cart: cart, medicine: aspirina, value: 10.00, quantity: 2)
      
      expect(cart.total).to eq(40.50)
    end
  end
end
