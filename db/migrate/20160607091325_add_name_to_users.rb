class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Name, :string
  end
end