class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamentos do |t|
      t.references :lancamento, index: true
      t.date :vencimento
      t.decimal :valor
      t.timestamps
    end
  end
end
