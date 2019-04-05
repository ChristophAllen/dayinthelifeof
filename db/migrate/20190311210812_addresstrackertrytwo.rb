class Addresstrackertrytwo < ActiveRecord::Migration
  def up
    create_table :ipaddressupvotetracker do |t|
      t.string :ipaddress
      t.boolean :upvoted
      t.integer :upvotedcount
       
      t.timestamps
    end
  end
end