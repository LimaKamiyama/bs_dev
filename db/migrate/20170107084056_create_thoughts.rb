class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|

        t.string      :name
        t.text        :genre
        t.text        :tag
        t.text        :text
        t.text        :open_area
        t.text        :image
        t.timestamps
    end
  end
end
