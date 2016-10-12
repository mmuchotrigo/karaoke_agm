class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.datetime :reserved_at
      t.references :local, index: true, foreign_key: true
      t.references :sala, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
