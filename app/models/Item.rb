class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  def format_price
    (price / 100).round(2)
  end
end
