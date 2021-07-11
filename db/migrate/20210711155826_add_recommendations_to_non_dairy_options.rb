class AddRecommendationsToNonDairyOptions < ActiveRecord::Migration[6.1]
  def change
    add_column :non_dairy_options, :recommendations, :text
  end
end
