class CreateVessels < ActiveRecord::Migration[6.0]
  def change
    create_table :vessels do |t|

      t.timestamps
    end
  end
end
