class AddWhalingGroundToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :whaling_ground, :string
  end
end
