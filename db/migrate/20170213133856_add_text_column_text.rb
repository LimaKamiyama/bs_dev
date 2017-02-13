class AddTextColumnText < ActiveRecord::Migration
  def change
    add_column :thoughts, :text, :text
  end
end
