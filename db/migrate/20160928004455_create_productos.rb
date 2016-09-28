class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :type
      t.string :name
      t.integer :price
      t.boolean :available
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
