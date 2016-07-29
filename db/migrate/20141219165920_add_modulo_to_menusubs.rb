class AddModuloToMenusubs < ActiveRecord::Migration
  def change
    add_column :menusubs, :modulo, :string
  end
end
