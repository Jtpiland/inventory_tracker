require 'rails_helper'
require 'faker'

RSpec.describe 'Item Index' do
  before :each do
    @item = FactoryBot.create(:item)
    @item2 = FactoryBot.create(:item)
    @item3 = FactoryBot.create(:item)
  end

  describe 'the item index' do
    it 'shows all the items and their attributes' do
      visit '/items'

      expect(page).to have_content(@item.name)
      expect(page).to have_content(@item.description)
      expect(page).to have_content("$#{@item.format_price}")
      expect(page).to have_content(@item2.name)
      expect(page).to have_content(@item2.description)
      expect(page).to have_content("$#{@item2.format_price}")
      expect(page).to have_content(@item3.name)
      expect(page).to have_content(@item3.description)
      expect(page).to have_content("$#{@item3.format_price}")
    end
  end

  describe 'search' do
    it 'returns searched for item if params match' do
      visit '/items'

      fill_in 'Search', with: @item.name

      click_on 'Search'

      expect(page).to have_content(@item.name)
      expect(page).to_not have_content(@item2.name)
      expect(page).to_not have_content(@item3.name)
    end
  end
end
