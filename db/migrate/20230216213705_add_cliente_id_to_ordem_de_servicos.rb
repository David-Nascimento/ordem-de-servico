class AddClienteIdToOrdemDeServicos < ActiveRecord::Migration[5.2]
  def change
    add_reference :ordem_de_servicos, :clientes, foreign_key: true
  end
end
