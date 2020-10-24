class RemoveLatLonFromVoyages < ActiveRecord::Migration[6.0]
  def change
    remove_column :voyages, :latitude_voyage
    remove_column :voyages, :longitude_voyage
  end
end
