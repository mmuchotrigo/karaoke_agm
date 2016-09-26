class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :salas, index: true, foreign_key: true
      t.references :clients, index: true, foreign_key: true
      t.datetime :date_time
      t.string :about

      t.timestamps null: false
    end
  end
end
