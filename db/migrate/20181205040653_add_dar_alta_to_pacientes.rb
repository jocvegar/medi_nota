class AddDarAltaToPacientes < ActiveRecord::Migration[5.2]
  def change
    add_column :pacientes, :dar_alta, :boolean, default: false
  end
end
