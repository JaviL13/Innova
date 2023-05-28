class CreateElementoQuims < ActiveRecord::Migration[7.0]
  def change
    create_table :elemento_quims do |t|
      t.references :caractquimica, null: false, foreign_key: true
      t.text :elemento
      t.integer :cantidad

      t.timestamps
    end
  end
end
