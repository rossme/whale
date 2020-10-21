class AddSourceToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :source, :string
  end
end
