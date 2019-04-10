class Creatingbeenheretrytwo < ActiveRecord::Migration[5.0]
  def change
    create_table :beenheretracker do |t|
      t.string :ipaddress
      t.boolean :beenhere

      t.timestamps null: false
    end
  end
end
