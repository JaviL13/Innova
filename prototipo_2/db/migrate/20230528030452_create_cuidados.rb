class CreateCuidados < ActiveRecord::Migration[7.0]
  def change
    create_table :cuidados do |t|
      t.references :cultivo, null: false, foreign_key: true
      t.text :tipo_riego

      t.timestamps
    end
  end
end
