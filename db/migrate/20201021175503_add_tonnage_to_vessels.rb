class AddTonnageToVessels < ActiveRecord::Migration[6.0]
  def change
    add_column :vessels, :tonnage, :integer
  end
end
