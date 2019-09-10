require 'rails_helper'

RSpec.describe CartItem, type: :model do
  context 'validations' do
    it { should validate_presence_of :quantity }
    it { should validate_numericality_of(:quantity).only_integer.is_greater_than(0) }
  end

  context 'relationships' do
    it { is_expected.to belong_to :cart }
    it { is_expected.to belong_to :medicine }
  end
end
