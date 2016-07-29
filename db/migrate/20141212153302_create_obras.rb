class CreateObras < ActiveRecord::Migration
  def change
    create_table :obras do |t|
      t.string :obra
      t.date :inicio
      t.date :fim

      t.timestamps
    end
  end
end
