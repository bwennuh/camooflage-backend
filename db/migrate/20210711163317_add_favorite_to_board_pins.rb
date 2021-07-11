class AddFavoriteToBoardPins < ActiveRecord::Migration[6.1]
  def change
    add_column :board_pins, :favorite, :boolean
  end
end
