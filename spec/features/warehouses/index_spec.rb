require 'rails_helper'

RSpec.describe 'Item Index' do
  before :each do
    @warehouse = FactoryBot.create(:warehouse)
    @warehouse2 = FactoryBot.create(:warehouse)
    @warehouse3 = FactoryBot.create(:warehouse)
  end

  describe 'the warehouse index' do
    it 'shows all the warehouses and their attributes' do
      visit '/warehouses'

      expect(page).to have_content(@warehouse.name)
      expect(page).to have_content(@warehouse.city)
      expect(page).to have_content(@warehouse.state)
      expect(page).to have_content(@warehouse2.name)
      expect(page).to have_content(@warehouse2.city)
      expect(page).to have_content(@warehouse2.state)
      expect(page).to have_content(@warehouse3.name)
      expect(page).to have_content(@warehouse3.city)
      expect(page).to have_content(@warehouse3.state)
    end
  end
end
