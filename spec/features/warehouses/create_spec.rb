require 'rails_helper'

RSpec.describe 'warehouse creation' do
  describe 'the warehouse new' do
    it 'renders the new form' do
      visit '/warehouses/new'

      expect(page).to have_content('New Warehouse')
      expect(find('form')).to have_content('Name')
      expect(find('form')).to have_content('City')
      expect(find('form')).to have_content('State')
    end
  end

  describe 'the warehouse create' do
    context 'given valid data' do
      it 'creates the warehouse' do
        visit '/warehouses/new'

        fill_in 'Name', with: 'Warehouse 1'
        fill_in 'City', with: 'Austin'
        fill_in 'State', with: 'TX'
        click_button 'Save'

        expect(page).to have_current_path('/warehouses')
        expect(page).to have_content('Warehouse 1')
      end
    end

    context 'given invalid data' do
      it 're-renders the new form' do
        visit '/warehouses/new'
        click_button 'Save'

        fill_in 'Name', with: 'warehouse 1'

        expect(page).to have_content("Error: Name can't be blank, City can't be blank, State can't be blank")
        expect(page).to have_current_path('/warehouses/new')
      end
    end
  end
end
