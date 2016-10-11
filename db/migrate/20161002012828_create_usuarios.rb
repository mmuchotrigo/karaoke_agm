class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :last_name
      t.references :tipo_usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
