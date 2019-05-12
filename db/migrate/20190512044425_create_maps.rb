class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.integer :place_id
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps
    end
  end
end
