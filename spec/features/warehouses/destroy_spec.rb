require 'rails_helper'

RSpec.describe 'Warehouse Destroy' do
  before :each do
    @warehouse = FactoryBot.create(:warehouse)
  end

  describe 'the warehouse destroy' do
    it 'destroys the warehouse' do
      visit '/warehouses'
      expect(page).to have_content(@warehouse.name)
      expect(page).to have_content(@warehouse.city)
      expect(page).to have_content(@warehouse.state)

      click_on "Delete #{@warehouse.name}"

      expect(page).to_not have_content(@warehouse.name)
      expect(page).to_not have_content(@warehouse.city)
      expect(page).to_not have_content(@warehouse.state)
    end
  end
end
