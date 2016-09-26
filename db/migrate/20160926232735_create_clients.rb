class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.date :birthday
      t.string :email
      t.string :telephone
      t.string :gender

      t.timestamps null: false
    end
  end
end
