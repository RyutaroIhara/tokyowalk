class AddUserIdToWalks < ActiveRecord::Migration
  def change
    add_column :walks, :user_id, :integer
  end
end
