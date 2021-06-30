class CreateRecipePins < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_pins do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :non_dairy_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
