class AddMasterUncToMaster < ActiveRecord::Migration[6.0]
  def change
    add_column :masters, :master_unc, :string
  end
end
