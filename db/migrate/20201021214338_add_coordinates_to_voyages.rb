class AddCoordinatesToVoyages < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :latitude, :float
    add_column :voyages, :longitude, :float
  end
end
