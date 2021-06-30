class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :username
      t.string :password
      t.text :bio
      t.string :avatar

      t.timestamps
    end
  end
end
