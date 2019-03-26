class RemovingColumnsToChangeDatatype < ActiveRecord::Migration
  def change
    remove_column :Videos, :contributor
  end
end
