class CreateSucs < ActiveRecord::Migration
  def change
    create_table :sucs do |t|
      t.string :name
      t.string :suc
      t.string :tarih
      t.string :suclu
      t.string :suctipi
      t.string :address
      t.float :longitude
      t.float :latitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
