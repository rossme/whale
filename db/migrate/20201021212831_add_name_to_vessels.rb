class AddNameToVessels < ActiveRecord::Migration[6.0]
  def change
    add_column :vessels, :name, :string
  end
end
