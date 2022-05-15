require 'rails_helper'

RSpec.describe 'Inventory Item Destroy' do
  before :each do
    @item = FactoryBot.create(:item)
    @warehouse = FactoryBot.create(:warehouse)
    @inventory_item = FactoryBot.create(:inventory_item, item: @item, warehouse: @warehouse, quantity: 10)
  end

  describe 'the item destroy' do
    it 'destroys the item' do
      visit '/inventory_items'

      click_on "Delete #{@inventory_item.name}"

      expect(page).to_not have_content(@inventory_item.item.name)
      expect(page).to_not have_content(@inventory_item.warehouse.name)
      expect(page).to_not have_content(@inventory_item.quantity)
    end
  end
end
