class AddSealingGroundToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :sealing_ground, :string
  end
end
