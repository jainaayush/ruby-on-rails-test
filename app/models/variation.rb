class Variation < ApplicationRecord
  belongs_to :product
  has_many :option_value_variations
  has_many :option_values, through: :option_value_variations

  accepts_nested_attributes_for :option_value_variations

  validates :sku, presence: true, uniqueness: true
  validates :quantity, presence: true, numericality: true
  validates :price, presence: true, numericality: true
end
