class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :update, :destroy]
  respond_to :json, :xml

  def index
    @clientes = Cliente.all
    respond_with @clientes
  end
  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
      respond_with @cliente, status: :created
    else
      respond_with @cliente.errors, status: :unprocessable_entity
    end
  end

  def update
    if @cliente.update(cliente_params)
      respond_with @cliente
    else
      respond_with @cliente.errors, status: :unprocessable_entity
    end
  end

  def show
    respond_with @cliente
  end
  def destroy
    @cliente.destroy
    head :no_content
  end

  private
  def set_cliente
    @cliente = Cliente.find(params[:id])
  end

  def cliente_params
    params.require(:cliente).permit(:nome,:documento,:telefone,:email)
  end

end
