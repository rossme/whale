class CreateMasters < ActiveRecord::Migration[6.0]
  def change
    create_table :masters do |t|

      t.timestamps
    end
  end
end
