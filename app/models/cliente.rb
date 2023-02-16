class Cliente < ApplicationRecord
  has_many :ordem_de_servicos
  validates :name, presence: true
  validates :document, presence: true, uniqueness: true
  validates :telephone, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  def to_s
    nome
  end
end
