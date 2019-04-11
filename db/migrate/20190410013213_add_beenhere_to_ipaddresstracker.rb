class AddBeenhereToIpaddresstracker < ActiveRecord::Migration[5.0]
  def change
    add_column :ipaddresstrackers, :beenhere, :boolean
  end
end
