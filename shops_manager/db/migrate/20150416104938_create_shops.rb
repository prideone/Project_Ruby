class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :chain
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :city
      t.integer :zip
      t.string :phone
      t.string :country_code

      t.timestamps null: false
    end
  end
end
