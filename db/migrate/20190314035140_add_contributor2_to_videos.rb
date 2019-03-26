class AddContributor2ToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :contributor, :text
  end
end
