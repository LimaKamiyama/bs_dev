class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|

        t.string      :name
        t.text        :genre
        t.timestamps
        t.text        :text
        t.text        :open_area
        t.text        :image
    end
  end
end
