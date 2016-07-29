class CreateMenusubs < ActiveRecord::Migration
  def change
    create_table :menusubs do |t|
      t.references :menu, index: true
      t.string :descricao
      t.string :link

      t.timestamps
    end
  end
end
