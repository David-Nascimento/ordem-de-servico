class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: [:show, :edit, :update, :destroy]

  def index
    @funcionarios = Funcionario.all
  end

  def new
    @funcionarios = Funcionario.new
  end

  def create
    @funcionarios = Funcionario.new(funcionario_params)
    if @funcionarios.save
      redirect_to funcionarios_path, notice: "Funcionario criado com sucesso!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @funcionarios = Funcionario.find(params[:id])
    if @funcionarios.update(funcionario_params)
      redirect_to funcionarios_path, notice: "Funcionario atualizado com sucesso!"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @funcionarios.destroy
    redirect_to funcionario_path, notice: "Funcionario excluido com sucesso!"
  end

  private
  def set_funcionario
    @funcionario = Funcionario.find(params[:id])
  end

  def funcionario_params
    params.require(:funcionario).permit(:nome, :documento, :telefone, :email)
  end

end
