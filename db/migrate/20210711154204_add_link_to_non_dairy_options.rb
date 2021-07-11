class AddLinkToNonDairyOptions < ActiveRecord::Migration[6.1]
  def change
    add_column :non_dairy_options, :link, :string
  end
end
