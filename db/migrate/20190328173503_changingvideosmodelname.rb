class Changingvideosmodelname < ActiveRecord::Migration[5.0]
  def change
  	rename_table :Videos, :videos
  end
end
