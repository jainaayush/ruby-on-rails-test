class Product < ApplicationRecord
  has_many :variations, inverse_of: :product
  accepts_nested_attributes_for :variations

  validates :title, presence: true
  validates :description, presence: true
end
