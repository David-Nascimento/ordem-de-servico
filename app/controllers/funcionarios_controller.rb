class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: [:show, :update, :destroy]
  respond_to :json, :xml

  def index
    @funcionarios = Funcionario.all
    respond_with @funcionarios
  end

  def create
    @funcionarios = Funcionario.new(funcionario_params)
    if @funcionarios.save
      respond_with @funcionarios, status: :create
    else
      respond_with @funcionarios, status: :unprocessable_entity
    end
  end

  def update
    @funcionarios = Funcionario.update(funcionario_params)
    if @funcionarios.save
      respond_with @funcionarios, status: :create
    else
      respond_with @funcionarios, status: :unprocessable_entity
    end
  end

  def show
    respond_with @funcionarios
  end

  def destroy
    @funcionarios.destroy
    head :no_content
  end

  private
  def set_funcionario
    @funcionario = Funcionario.find(params[:id])
  end

  def funcionario_params
    params.require(:funcionario).permit(:nome, :documento, :telefone, :email)
  end

end
