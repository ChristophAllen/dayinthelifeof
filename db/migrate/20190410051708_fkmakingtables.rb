class Fkmakingtables < ActiveRecord::Migration[5.0]
  def change
  	  drop_table :beenheretracker
  	  create_table :beenheretrackers do |t|
      t.string :ipaddress
      t.boolean :beenhere

      t.timestamps null: false
    end
  end
end
