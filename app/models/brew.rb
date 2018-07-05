class Brew < ApplicationRecord
  has_many :purchases
  has_many :customers, through: :purchases

  validates :blend_name, presence: true
  validates :origin, presence: true
  validates :notes, presence: true
  validates :strength, {presence: true, numericality: {less_than_or_equal_to: 5, greater_than_or_equal_to: 1}}

end
