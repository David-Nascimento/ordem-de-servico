class CreateFuncionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionarios do |t|
      t.string :nome, null: true
      t.string :documento, null: true
      t.string :telefone, null: true
      t.string :email, null: true

      t.timestamps
    end

    add_index :funcionarios, :documento, unique: true
  end
end
