require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  describe 'relationships' do
    it { should have_many(:inventory_items) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
  end
end
