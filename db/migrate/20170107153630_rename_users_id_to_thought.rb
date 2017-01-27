class RenameUsersIdToThought < ActiveRecord::Migration
  def change
    rename_column :thoughts, :users_id, :user_id
  end
end
