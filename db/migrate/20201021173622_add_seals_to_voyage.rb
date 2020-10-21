class AddSealsToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :seals, :integer
  end
end
