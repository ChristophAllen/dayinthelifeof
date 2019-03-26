class Ipaddressupvotetracker < ActiveRecord::Migration
  def change
    create_table :ipaddressupvotetrackers do |t|
      t.string :ipaddress
      t.boolean :upvoted
      t.integer :upvotedcount
      
      t.timestamps
    end
  end
end
