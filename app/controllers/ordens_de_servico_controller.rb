class OrdensDeServicoController < ApplicationController
  before_action :set_orden_de_servico, only: [:show, :edit, :update, :destroy]

  def index
    @ods = OrdemDeServico.all
  end

  def new
    @ods = OrdemDeServico.new
  end

  def create
    @ods = OrdemDeServico.new(ordemDeServico_params)
    if @ods.save
      redirect_to ordens_de_servico_path, notice: "Ordem de serviço cadastrada!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @ods = OrdemDeServico.find(ordenDeServico_params)
    if @ods.update
      redirect_to ordens_de_servico_path, notice: "Ordem de serviço atualizada!"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @ods.destroy
    redirect_to ordem_de_servico_path, notice: "Ordem de serviço excluida!"
  end

  private

  def set_ordem_de_servico
    @ods = OrdemDeServico.find(params[:id])
  end

  def ordemDeServico_params
    params.require(:orden_de_servico).permit(:numero, :descricao, :data_solicitacao, :previsao_conclusao)
  end

end
