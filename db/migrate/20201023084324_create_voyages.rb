class CreateVoyages < ActiveRecord::Migration[6.0]
  def change
    create_table :voyages do |t|
      t.string :voyage_code
      t.string :name
      t.string :port
      t.integer :year
      t.string :whaling_ground
      t.string :sealing_ground
      t.integer :whales
      t.integer :whale_oil
      t.integer :seals
      t.integer :seal_oil
      t.integer :other_whales
      t.string :source
      t.string :notes
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
