require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'relationships' do
    it { should have_one(:inventory_item) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
  end
end
