class AddCachedupvotesToVideos < ActiveRecord::Migration[5.0]
  def change
  	add_column :videos, :cached_votes_up, :integer, :default => 0
  end
end
