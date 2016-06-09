class RemoveNameFromWalks < ActiveRecord::Migration
  def change
    remove_column :walks, :name, :string
  end
end
