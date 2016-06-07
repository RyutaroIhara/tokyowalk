class RemoveNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :Name, :string
  end
end
