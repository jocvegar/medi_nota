class Paciente < ApplicationRecord
	belongs_to :hospital

	validates_presence_of :nombre, :edad, :fecha_de_ingreso, :antecedentes, :diagnostico, :plan, :genero, :camilla, :message => "no puede estar vacio."
end


