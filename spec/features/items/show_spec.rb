require 'rails_helper'
require 'faker'

RSpec.describe 'Item Show' do
  before :each do
    @item = FactoryBot.create(:item)
    @item2 = FactoryBot.create(:item)
  end

  describe 'the item show' do
    it 'shows a specific item and its attributes' do
      visit "/items/#{@item.id}"

      expect(page).to have_content(@item.name)
      expect(page).to have_content(@item.description)
      expect(page).to have_content("$#{@item.format_price}")
      expect(page).to_not have_content(@item2.name)
      expect(page).to_not have_content(@item2.description)
      expect(page).to_not have_content("$#{@item2.format_price}")
    end
  end
end
