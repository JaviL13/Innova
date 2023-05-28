class CreateComponentesFiscos < ActiveRecord::Migration[7.0]
  def change
    create_table :componentes_fiscos do |t|
      t.references :caractfisica, null: false, foreign_key: true
      t.text :componente
      t.integer :cantidad

      t.timestamps
    end
  end
end
