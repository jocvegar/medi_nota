class AddPendienteToPacientes < ActiveRecord::Migration[5.2]
  def change
    add_column :pacientes, :pendientes, :text
  end
end
