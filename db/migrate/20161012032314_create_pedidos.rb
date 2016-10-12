class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :producto, index: true, foreign_key: true
      t.string :cantidad

      t.timestamps null: false
    end
  end
end
