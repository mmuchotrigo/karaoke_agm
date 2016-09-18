class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :email
      t.string :about
      t.string :manager

      t.timestamps null: false
    end
  end
end
