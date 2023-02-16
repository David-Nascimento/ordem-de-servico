class Funcionario < ApplicationRecord
  has_many :ordem_de_servicos
  validates :nome, presence: true
  validates :documento, presence: true, uniqueness: true
  validates :telefone, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }


  def to_s
    nome
  end

end
