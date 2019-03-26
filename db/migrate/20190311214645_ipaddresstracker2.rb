class Ipaddresstracker2 < ActiveRecord::Migration
  def change
    create_table :ipaddresstracker2 do |t|
      t.string :address
      t.integer :upvotecount
      t.boolean :upvote
      
      t.timestamps
    end
  end
end
