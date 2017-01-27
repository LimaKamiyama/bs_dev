class RemoveNameFromActions < ActiveRecord::Migration
  def change
    remove_column :actions, :name, :string
  end
end
