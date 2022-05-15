require 'rails_helper'

RSpec.describe 'inventory_item update' do
  before :each do
    @item = FactoryBot.create(:item)
    @item2 = FactoryBot.create(:item)
    @warehouse = FactoryBot.create(:warehouse)
    @warehouse2 = FactoryBot.create(:warehouse)
    @inventory_item = FactoryBot.create(:inventory_item, item: @item, warehouse: @warehouse, quantity: 10)
  end

  describe 'the inventory_item update' do
    it 'renders the update form' do
      visit "/inventory_items/#{@inventory_item.id}/edit"

      expect(page).to have_content('Update Inventory Item')
      expect(find('form')).to have_content('Item')
      expect(find('form')).to have_content('Warehouse')
      expect(find('form')).to have_content('Quantity')
    end
  end

  describe 'the item update' do
    context 'given valid data' do
      it 'updates the item' do
        visit "/inventory_items/#{@inventory_item.id}/edit"

        select @item2.name, from: 'Item'
        select @warehouse2.name, from: 'Warehouse'
        fill_in 'Quantity', with: 20
        click_button 'Save'

        expect(page).to have_current_path('/inventory_items')
        expect(page).to have_content(@item2.name)
        expect(page).to_not have_content(@item.name)
        expect(page).to have_content(@warehouse2.name)
        expect(page).to_not have_content(@warehouse.name)
        expect(page).to have_content(20)
        expect(page).to_not have_content(10)
      end
    end
  end
end
