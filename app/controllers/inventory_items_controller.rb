class InventoryItemsController < ApplicationController
  def index
    @inventory_items = InventoryItem.all
  end

  def new
    @items = []
    @warehouses = []

    Item.all.each do |item|
      @items << item.name
    end

    Warehouse.all.each do |warehouse|
      @warehouses << warehouse.name
    end
  end

  def create
    item = Item.find_by(name: inventory_item_params[:item])
    warehouse = Warehouse.find_by(name: inventory_item_params[:warehouse])

    inventory_item = InventoryItem.create(item: item, warehouse: warehouse, quantity: inventory_item_params[:quantity])
    if inventory_item.save
      redirect_to '/inventory_items'
    else
      redirect_to '/inventory_items/new'
      flash[:alert] = "Error: Item can't be blank, Warehouse can't be blank, Quantity can't be blank"
    end
  end

  private

  def inventory_item_params
    params.permit(:id, :item, :warehouse, :quantity)
  end
end
