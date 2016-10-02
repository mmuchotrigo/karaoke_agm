class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :dni
      t.string :telefono
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
