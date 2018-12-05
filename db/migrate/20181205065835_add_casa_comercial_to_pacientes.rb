class AddCasaComercialToPacientes < ActiveRecord::Migration[5.2]
  def change
    add_column :pacientes, :casa_comercial, :string
  end
end
