class AddContributorToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :contributor, :string
  end
end
