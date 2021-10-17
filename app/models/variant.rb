class Variant < ApplicationRecord
  validates_presence_of :price, :name
  belongs_to :product
end
