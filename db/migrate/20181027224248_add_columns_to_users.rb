class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :primer_nombre, :string
    add_column :users, :segundo_nombre, :string
    add_column :users, :primer_apellido, :string
    add_column :users, :segundo_apellido, :string
  end
end
