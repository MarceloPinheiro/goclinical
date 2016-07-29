class CreateOrcamentos < ActiveRecord::Migration
  def change
    create_table :orcamentos do |t|
      t.integer :obra
      t.decimal,precision:2 :valor
      t.integer :mes
      t.integer :ano

      t.timestamps
    end
  end
end
