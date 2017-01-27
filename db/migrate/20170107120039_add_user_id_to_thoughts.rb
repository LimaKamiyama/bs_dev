class AddUserIdToThoughts < ActiveRecord::Migration
  def change
    add_column :thoughts, :users_id, :integer
  end
end
