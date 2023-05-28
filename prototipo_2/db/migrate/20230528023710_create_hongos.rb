class CreateHongos < ActiveRecord::Migration[7.0]
  def change
    create_table :hongos do |t|
      t.date :fecha
      t.references :cultivo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
