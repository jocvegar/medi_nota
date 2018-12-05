class PacientesEgresadosController < ApplicationController
	before_action :require_login
	before_action :set_paciente, only: [:show, :ingresar]
	before_action :set_hospital

	def index
		@pacientes = @hospital.pacientes.egresados
	end

	def show
	end

	def ingresar
	  @paciente.update(dar_alta: false)
	  respond_to do |format|
	    format.html { redirect_to hospital_pacientes_path(@hospital), notice: 'Paciente ingresado.' }
	  end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_paciente
		@paciente = Paciente.friendly.find(params[:id])
	end

	def set_hospital
	  @hospital = Hospital.friendly.find(params[:hospital_id])
	end
end
