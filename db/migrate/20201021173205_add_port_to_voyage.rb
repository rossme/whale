class AddPortToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :port, :string
  end
end
