require 'rails_helper'
require 'faker'

RSpec.describe 'Item Destroy' do
  before :each do
    @item = FactoryBot.create(:item)
  end

  describe 'the item destroy' do
    it 'destroys the item' do
      visit '/items'

      click_on "Delete #{@item.name}"

      expect(page).to_not have_content(@item.name)
      expect(page).to_not have_content(@item.description)
      expect(page).to_not have_content("$#{@item.format_price}")
    end
  end
end
