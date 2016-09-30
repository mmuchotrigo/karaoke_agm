class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date_time
      t.integer :capacity
      t.string :about

      t.timestamps null: false
    end
  end
end
