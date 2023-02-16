class OrdensDeServicoController < ApplicationController
  before_action :set_orden_de_servico, only: [:show, :update, :destroy]
  respond_to :json, :xml

  def index
    @ods = OrdemDeServico.all
  end

  def create
    @ods = OrdemDeServico.new(ordemDeServico_params)
    if @ods.save
      respond_with @ods, status: :created
    else
      respond_with @ods.errors, status: :unprocessable_entity
    end
  end

  def update
    if @ods.update(cliente_params)
      respond_with @ods
    else
      respond_with @ods.errors, status: :unprocessable_entity
    end
  end

  def show
    respond_with @ods
  end

  def destroy
    @ods.destroy
    head :no_content
  end

  private

  def set_ordem_de_servico
    @ods = OrdemDeServico.find(params[:id])
  end

  def ordemDeServico_params
    params.require(:orden_de_servico).permit(:numero, :descricao, :data_solicitacao, :previsao_conclusao)
  end

end
