class CreateCaractQuimicas < ActiveRecord::Migration[7.0]
  def change
    create_table :caract_quimicas do |t|
      t.references :suelo, null: false, foreign_key: true
      t.date :fecha

      t.timestamps
    end
  end
end
