class AddSlugToPacientes < ActiveRecord::Migration[5.2]
  def change
    add_column :pacientes, :slug, :string
    add_index :pacientes, :slug, unique: true
  end
end
