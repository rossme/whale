class AddYearToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :year, :integer
  end
end
