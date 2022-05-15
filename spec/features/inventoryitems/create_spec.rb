require 'rails_helper'

RSpec.describe 'inventory_item creation' do
  before :each do
    @item = FactoryBot.create(:item)
    @warehouse = FactoryBot.create(:warehouse)
  end

  describe 'the inventory_item new' do
    it 'renders the new form' do
      visit '/inventory_items/new'

      expect(page).to have_content('New Inventory Item')
      expect(find('form')).to have_content('Item')
      expect(find('form')).to have_content('Quantity')
      expect(find('form')).to have_content('Warehouse')
    end
  end

  describe 'the inventory_item create' do
    context 'given valid data' do
      it 'creates the inventory_item' do
        visit '/inventory_items/new'

        select @item.name, from: 'Item'
        select @warehouse.name, from: 'Warehouse'
        fill_in 'Quantity', with: 10
        click_button 'Save'

        expect(page).to have_current_path('/inventory_items')
        expect(page).to have_content(@item.name)
        expect(page).to have_content(@warehouse.name)
        expect(page).to have_content(10)
      end
    end

    context 'given invalid data' do
      it 're-renders the new form' do
        visit '/inventory_items/new'
        click_button 'Save'

        select @item.name, from: 'Item'

        expect(page).to have_content("Error: Item can't be blank, Warehouse can't be blank, Quantity can't be blank")
        expect(page).to have_current_path('/inventory_items/new')
      end
    end
  end
end