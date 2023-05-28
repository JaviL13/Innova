class CreateSuelos < ActiveRecord::Migration[7.0]
  def change
    create_table :suelos do |t|
      t.references :cultivo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
