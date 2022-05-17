# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
InventoryItem.destroy_all
Item.destroy_all
Warehouse.destroy_all

@item1 = Item.create!(name: 'Item 1', description: 'This is an Item', price: 1000)
@item2 = Item.create!(name: 'Item 2', description: 'This is a different Item', price: 2000)
@item3 = Item.create!(name: 'Item 3', description: 'Woah an Item', price: 1500)
@item4 = Item.create!(name: 'Item 4', description: 'Cool new Item', price: 1000)
@item5 = Item.create!(name: 'Item 5', description: 'Have you ever seen such an item?', price: 3000)

@warehouse1 = Warehouse.create!(name: 'New Warehouse', city: 'Austin', state: 'TX')
@warehouse2 = Warehouse.create!(name: 'Another Warehouse', city: 'Dallas', state: 'TX')
@warehouse3 = Warehouse.create!(name: 'A Warehouse', city: 'Houston', state: 'TX')

@inventory_item1 = InventoryItem.create!(item: @item1, warehouse: @warehouse1, quantity: 10)
@inventory_item2 = InventoryItem.create!(item: @item2, warehouse: @warehouse2, quantity: 15)
@inventory_item3 = InventoryItem.create!(item: @item3, warehouse: @warehouse3, quantity: 20)
