class AddWhalesToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :whales, :integer
  end
end
