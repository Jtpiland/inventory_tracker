require 'rails_helper'

RSpec.describe InventoryItem, type: :model do
  describe 'relationships' do
    it { should belong_to(:item) }
    it { should belong_to(:warehouse) }
  end

  describe 'validations' do
    it { should validate_presence_of(:quantity) }
    it { should validate_presence_of(:item) }
    it { should validate_presence_of(:warehouse) }
  end
end
