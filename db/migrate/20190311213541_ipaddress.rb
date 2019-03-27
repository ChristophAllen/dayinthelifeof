class Ipaddress < ActiveRecord::Migration
  def change
    create_table :ipaddress do |t|
      t.string :address
      t.integer :upvotecount
      t.boolean :upvote
      
      t.timestamps
    end
  end
end