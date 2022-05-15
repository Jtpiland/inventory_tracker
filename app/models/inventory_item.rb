class InventoryItem < ApplicationRecord
  validates_presence_of :item
  validates_presence_of :warehouse
  validates_presence_of :quantity

  belongs_to :item
  belongs_to :warehouse
end
