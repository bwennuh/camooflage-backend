class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_pins
  has_many :non_dairy_options, through: :recipe_pins
end
