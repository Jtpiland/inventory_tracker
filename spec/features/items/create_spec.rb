require 'rails_helper'

RSpec.describe 'item creation' do
  describe 'the item new' do
    it 'renders the new form' do
      visit '/items/new'

      expect(page).to have_content('New Item')
      expect(find('form')).to have_content('Name')
      expect(find('form')).to have_content('Description')
      expect(find('form')).to have_content('Price')
    end
  end

  describe 'the item create' do
    context 'given valid data' do
      it 'creates the item' do
        visit '/items/new'

        fill_in 'Name', with: 'Item 1'
        fill_in 'Description', with: 'An incredible item. #1!'
        fill_in 'Price', with: 1000
        click_button 'Save'

        expect(page).to have_current_path('/items')
        expect(page).to have_content('Item 1')
      end
    end

    context 'given invalid data' do
      it 're-renders the new form' do
        visit '/items/new'
        click_button 'Save'

        fill_in 'Name', with: 'Item 1'

        expect(page).to have_content("Error: Name can't be blank, Description can't be blank, Price can't be blank")
        expect(page).to have_current_path('/items/new')
      end
    end
  end
end
