class CreateBeenheretrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :beenheretrackers do |t|
      t.string :ipaddress
      t.boolean :beenhere

      t.timestamps
    end
  end
end
