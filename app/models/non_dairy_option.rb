class NonDairyOption < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  has_many :board_pins
  has_many :boards, through: board_pins
  has_many :recipe_pins
  has_many :recipes, through: :recipe_pins
end
