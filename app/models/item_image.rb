class ItemImage < ApplicationRecord
  belongs_to :item

  validates :url, presence: true
end
