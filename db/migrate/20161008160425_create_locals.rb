class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :description
      t.references :manager, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
