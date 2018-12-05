class PacientesController < ApplicationController
  before_action :require_login
  before_action :set_paciente, only: [:show, :edit, :update, :destroy, :dar_alta]
  before_action :set_hospital

  def index
    @pacientes = @hospital.pacientes.where(dar_alta: false).order("created_at DESC")
  end

  def show
  end

  def new
    @paciente = Paciente.new
  end

  def edit
  end

  def create
    @paciente = @hospital.pacientes.build(paciente_params)

    respond_to do |format|
      if @paciente.save
        format.html { redirect_to hospital_pacientes_path(@hospital), notice: 'Paciente creado!' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html { redirect_to hospital_paciente_path(hospital_id: @hospital.slug, id: @paciente.slug),
            notice: 'Paciente actualizado!' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to hospital_pacientes_path(@hospital), notice: 'Paciente eliminado.' }
    end
  end

  def dar_alta
    @paciente.update(dar_alta: true)
    respond_to do |format|
      format.html { redirect_to hospital_pacientes_path(@hospital), notice: 'Paciente dado de alta.' }
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_params
      params.require(:paciente).permit(:nombre, :edad, :fecha_de_ingreso, :antecedentes, :diagnostico, :plan, :genero, :camilla, :pendientes)
    end
end
