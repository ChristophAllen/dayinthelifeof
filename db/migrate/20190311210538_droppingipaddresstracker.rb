class Droppingipaddresstracker < ActiveRecord::Migration
  def change
    drop_table :ipaddressupvotetrackers
  end
end
