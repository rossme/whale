class AddSealOilToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :seal_oil, :integer
  end
end
