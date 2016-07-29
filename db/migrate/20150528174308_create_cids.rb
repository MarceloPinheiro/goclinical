class CreateCids < ActiveRecord::Migration
  def change
    create_table :cids do |t|
      t.string :cid
      t.string :descricao

      t.timestamps
    end
  end
end
