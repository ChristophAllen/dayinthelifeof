class Droppingsecondipaddress < ActiveRecord::Migration
  def change
    drop_table :ipaddressupvotetracker
  end
end
