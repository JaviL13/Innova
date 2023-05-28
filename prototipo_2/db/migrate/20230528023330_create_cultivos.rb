class CreateCultivos < ActiveRecord::Migration[7.0]
  def change
    create_table :cultivos do |t|
      t.string :planta
      t.references :campo, null: false, foreign_key: true
      t.integer :superficei

      t.timestamps
    end
  end
end
