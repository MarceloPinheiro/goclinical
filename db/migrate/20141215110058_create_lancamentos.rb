class CreateLancamentos < ActiveRecord::Migration
  def change
    create_table :lancamentos do |t|
      t.integer :obra
      t.integer :fornecedor
      t.integer :nota
      t.decimal :valor
      t.integer :status

      t.timestamps
    end
  end
end
