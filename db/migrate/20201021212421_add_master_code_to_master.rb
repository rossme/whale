class AddMasterCodeToMaster < ActiveRecord::Migration[6.0]
  def change
    add_column :masters, :master_code, :string
  end
end
