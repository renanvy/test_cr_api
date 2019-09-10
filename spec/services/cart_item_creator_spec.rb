require 'rails_helper'

RSpec.describe CartItemCreator do
  describe '.create!' do
    context 'add new medicine to cart' do
      let(:amoxilina) { create(:amoxilina, stock: 10) }
      let(:cart_item) { build(:cart_item, medicine: amoxilina, quantity: 2) }

      before do
        described_class.create!(cart_item)
      end

      it 'creates a new cart item' do
        expect(cart_item.id).not_to be_nil
      end
      
      it 'decrease stock' do
        expect(amoxilina.stock).to eq(8)
      end
    end

    context 'add existing medicine to cart' do
      let(:amoxilina) { create(:amoxilina, stock: 10) }
      let(:cart_item) { build(:cart_item, medicine: amoxilina, quantity: 5) }

      before do
        create(:cart_item, medicine: amoxilina, quantity: 2) 
        described_class.create!(cart_item)
      end

      it 'updates cart item quantity' do
        expect(cart_item.quantity).to eq(5)
      end
      
      it 'updates medicine stock' do
        expect(amoxilina.stock).to eq(5)
      end
    end
  end
end