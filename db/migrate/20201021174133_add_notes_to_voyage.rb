class AddNotesToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :notes, :string
  end
end
