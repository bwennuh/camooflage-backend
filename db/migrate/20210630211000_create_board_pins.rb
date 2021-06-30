class CreateBoardPins < ActiveRecord::Migration[6.1]
  def change
    create_table :board_pins do |t|
      t.belongs_to :board, null: false, foreign_key: true
      t.belongs_to :non_dairy_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
