class CreatePacientes < ActiveRecord::Migration[5.2]
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.integer :edad
      t.datetime :fecha_de_ingreso
      t.text :antecedentes
      t.text :diagnostico
      t.text :plan
      t.string :genero
      t.string :camilla

      t.timestamps
    end
  end
end
