class RecipePin < ApplicationRecord
  belongs_to :recipe
  belongs_to :non_dairy_option
end
