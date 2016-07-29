class CreateAcessos < ActiveRecord::Migration
  def change
    create_table :acessos do |t|
      t.references :user, index: true
      t.references :menusub, index: true
      t.string :acao

      t.timestamps
    end
  end
end
