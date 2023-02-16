class OrdemDeServico < ApplicationRecord
  belongs_to :cliente
  belongs_to :funcionario

  validates :numero, presence: true, uniqueness: true
  validates :descricao, presence: true
  validates :data_solicitacao, presence: true
  validates :previsao_conclusao, presence: true

  def to_s
    numero
  end
end
