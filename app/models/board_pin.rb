class BoardPin < ApplicationRecord
  belongs_to :board
  belongs_to :non_dairy_option
end
