class AddVesselCodeToVessels < ActiveRecord::Migration[6.0]
  def change
    add_column :vessels, :vessel_code, :string
  end
end
