class AddWasitupvotedjustnowToVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :wasitupvotedjustnow, :boolean
  end
end
