class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :fornecedor
      t.string :contato

      t.timestamps
    end
  end
end
