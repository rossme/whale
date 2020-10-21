class AddVesselTypeToVessels < ActiveRecord::Migration[6.0]
  def change
    add_column :vessels, :vessel_type, :string
  end
end
