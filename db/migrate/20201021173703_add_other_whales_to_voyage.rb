class AddOtherWhalesToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :other_whales, :integer
  end
end
