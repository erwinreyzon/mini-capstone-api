class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :prodcuts, through: :carted_products
end
