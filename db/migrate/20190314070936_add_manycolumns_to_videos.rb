class AddManycolumnsToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :email, :string
    add_column :videos, :phone, :string
  end
end
