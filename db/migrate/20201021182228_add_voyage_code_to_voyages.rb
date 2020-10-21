class AddVoyageCodeToVoyages < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :voyage_code, :integer
  end
end
