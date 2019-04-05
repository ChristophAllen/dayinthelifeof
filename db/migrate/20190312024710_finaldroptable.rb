class Finaldroptable < ActiveRecord::Migration
  def change
    drop_table :ipaddress
    drop_table :ipaddresstracker2
  end
end
