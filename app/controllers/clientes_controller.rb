class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  def index
    @clientes = Cliente.all
  end

  def new
    @clientes = Clinte.new
  end

  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
      redirect_to clientes_path, notice: "Cliente criado com sucesso!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cliente = Cliente.find(params[:id])

    if @cliente.update(cliente_params)
      redirect_to clientes_path, notice: "Cliente atualizado com sucesso!"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @cliente.destroy
    redirect_to clientes_path, notice: "Cliente excluido com sucesso!"
  end

  private
  def set_cliente
    @cliente = Cliente.find(params[:id])
  end

  def cliente_params
    params.require(:cliente).permit(:nome,:documento,:telefone,:email)
  end

end
