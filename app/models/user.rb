class User < ApplicationRecord
  has_many :boards
  has_many :recipes
  has_many :board_pins, through: :boards
  has_many :recipe_pins, through: :recipes
end
