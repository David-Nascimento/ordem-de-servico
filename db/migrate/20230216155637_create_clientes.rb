class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :name, null: false
      t.string :document, null: false
      t.string :telephone, null: false
      t.string :email, null: false

      t.timestamps
    end

    add_index :clientes, :document, unique: true
  end
end
