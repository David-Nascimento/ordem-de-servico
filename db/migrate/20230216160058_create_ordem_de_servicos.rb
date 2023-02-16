class CreateOrdemDeServicos < ActiveRecord::Migration[5.2]
  def change
    create_table :ordem_de_servicos do |t|
      t.string :numero, null: false
      t.references :cliente, null: false, foreign_key: true
      t.references :funcionario, null: false, foreign_keys: true
      t.text :descricao, null: false
      t.date :data_solicitacao, null: false
      t.date :previsao_conclusao, null: false

      t.timestamps
    end
    add_index :ordem_de_servicos, :numero, unique: true
  end
end
