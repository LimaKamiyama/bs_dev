class ChangeDatatypeTitleOfThoughts < ActiveRecord::Migration
  def change
    change_column :thoughts, :title, :string
  end
end
