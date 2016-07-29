class CreateLancamentoprodutos < ActiveRecord::Migration
  def change
    create_table :lancamentoprodutos do |t|
      t.integer :lancamento
      t.integer :produto
      t.decimal :quantidade
      t.decimal :valor

      t.timestamps
    end
  end
end
