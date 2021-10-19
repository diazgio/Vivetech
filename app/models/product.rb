class Product < ApplicationRecord
  validates_presence_of :name, :description
  has_many :variants
  accepts_nested_attributes_for :variants
end
