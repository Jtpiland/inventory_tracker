class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  has_one :inventory_item

  def format_price
    (price / 100).round(2)
  end
end
