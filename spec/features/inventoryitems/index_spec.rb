require 'rails_helper'

RSpec.describe 'InventoryItem Index' do
  before :each do
    item = FactoryBot.create(:item)
    warehouse = FactoryBot.create(:warehouse)
    @inventoryitem = FactoryBot.create(:inventory_item, item: item, warehouse: warehouse)
    @inventoryitem2 = FactoryBot.create(:inventory_item, item: item, warehouse: warehouse)
    @inventoryitem3 = FactoryBot.create(:inventory_item, item: item, warehouse: warehouse)
  end

  describe 'the inventoryitem index' do
    it 'shows all the inventoryitems with item name, quantity and warehouse' do
      visit '/inventory_items'

      expect(page).to have_content(@inventoryitem.id)
      expect(page).to have_content(@inventoryitem.quantity)
      expect(page).to have_content(@inventoryitem.item.name)
      expect(page).to have_content(@inventoryitem.warehouse.name)
      expect(page).to have_content(@inventoryitem2.id)
      expect(page).to have_content(@inventoryitem2.quantity)
      expect(page).to have_content(@inventoryitem2.item.name)
      expect(page).to have_content(@inventoryitem2.warehouse.name)
      expect(page).to have_content(@inventoryitem3.id)
      expect(page).to have_content(@inventoryitem3.quantity)
      expect(page).to have_content(@inventoryitem3.item.name)
      expect(page).to have_content(@inventoryitem2.warehouse.name)
    end
  end
end
