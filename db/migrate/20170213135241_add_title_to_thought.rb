class AddTitleToThought < ActiveRecord::Migration
  def change
    add_column :thoughts, :title, :integer
  end
end
