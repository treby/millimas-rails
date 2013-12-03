class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :feed_id
      t.string :title
      t.string :url
      t.string :author
      t.text :summary
      t.datetime :published

      t.timestamps
    end
  end
end
