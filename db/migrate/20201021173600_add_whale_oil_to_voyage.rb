class AddWhaleOilToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :whale_oil, :integer
  end
end
