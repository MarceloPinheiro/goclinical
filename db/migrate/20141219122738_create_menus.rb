class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :descricao
      t.string :link

      t.timestamps
    end
  end
end
