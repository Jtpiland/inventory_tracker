class InventoryItemsController < ApplicationController
  def index
    @inventory_items = InventoryItem.all
  end
end
