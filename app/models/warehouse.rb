class Warehouse < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true

  has_many :inventory_items
end
