class AddNombreFromHomgos < ActiveRecord::Migration[7.0]
  def change
    add_column :hongos, :nombre, :string
  end
end
