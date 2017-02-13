class RenameTextColumnToTitle < ActiveRecord::Migration
  def change
    rename_column :thoughts, :text, :title
  end
end
