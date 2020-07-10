class Variation < ApplicationRecord
  belongs_to :product
  has_many :option_value_variations
  has_many :option_values, through: :option_value_variations

  accepts_nested_attributes_for :option_value_variations
end
