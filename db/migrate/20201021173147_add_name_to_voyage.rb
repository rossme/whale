class AddNameToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :name, :string
  end
end
