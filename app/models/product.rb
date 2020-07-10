class Product < ApplicationRecord
  has_many :variations, inverse_of: :product
  accepts_nested_attributes_for :variations
end
