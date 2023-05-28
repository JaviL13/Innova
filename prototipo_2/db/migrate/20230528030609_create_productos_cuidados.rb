class CreateProductosCuidados < ActiveRecord::Migration[7.0]
  def change
    create_table :productos_cuidados do |t|
      t.references :cuidado, null: false, foreign_key: true
      t.string :tipo
      t.text :marca
      t.date :fecha_aplicacion

      t.timestamps
    end
  end
end
