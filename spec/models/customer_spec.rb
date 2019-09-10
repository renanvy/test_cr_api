require 'rails_helper'

RSpec.describe Customer, type: :model do
  context 'validations' do
    it { should validate_presence_of :name }
  end

  context 'relationships' do
    it { is_expected.to have_many :carts }
  end

  context '#name' do
    let(:customer) { Customer.new(name: 'renan carneiro') }

    it 'returns name titleized' do
      expect(customer.name).to eq('Renan Carneiro')
    end
  end
end
