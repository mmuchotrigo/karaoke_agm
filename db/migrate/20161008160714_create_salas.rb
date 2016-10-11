class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.string :name
      t.string :capacity
      t.string :description
      t.references :local, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
