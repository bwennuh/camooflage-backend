class CreateNonDairyOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :non_dairy_options do |t|
      t.string :name
      t.text :description
      t.text :allergens
      t.string :image
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
