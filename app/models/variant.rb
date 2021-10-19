class Variant < ApplicationRecord
  validates_presence_of :price, :brand
  belongs_to :product
end
