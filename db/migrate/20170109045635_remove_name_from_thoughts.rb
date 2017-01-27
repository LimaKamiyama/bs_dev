class RemoveNameFromThoughts < ActiveRecord::Migration
  def change
    remove_column :thoughts, :name, :string
  end
end
