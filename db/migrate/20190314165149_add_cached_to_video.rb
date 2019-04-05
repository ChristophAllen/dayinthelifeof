class AddCachedToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :cached_votes_total, :integer, :default => 0
  end
end
