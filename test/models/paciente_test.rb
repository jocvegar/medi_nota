require 'test_helper'
include TestModelValidations

class PacienteTest < ActiveSupport::TestCase
	test_validates_presence_of Paciente.new, :nombre, :edad, :fecha_de_ingreso, :antecedentes, :diagnostico, :plan, :genero, :camilla
end
