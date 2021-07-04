class Board < ApplicationRecord
  belongs_to :user
  has_many :board_pins
  has_many :non_dairy_options, through: :board_pins
end
