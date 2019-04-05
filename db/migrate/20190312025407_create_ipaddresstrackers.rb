class CreateIpaddresstrackers < ActiveRecord::Migration
  def change
    create_table :ipaddresstrackers do |t|
      t.string :ipaddress
      t.boolean :upvoted
      t.integer :upvotedcount

      t.timestamps null: false
    end
  end
end
