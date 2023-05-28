class CreateCampos < ActiveRecord::Migration[7.0]
  def change
    create_table :campos do |t|
      t.references :user, null: false, foreign_key: true
      t.text :localidad
      t.integer :superficie

      t.timestamps
    end
  end
end
