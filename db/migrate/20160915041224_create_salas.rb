class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.string :name
      t.integer :capacity
      t.string :about
      t.references :local, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
