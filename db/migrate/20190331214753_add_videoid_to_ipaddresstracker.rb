class AddVideoidToIpaddresstracker < ActiveRecord::Migration[5.0]
  def change
    add_column :ipaddresstrackers, :videoid, :integer
  end
end
