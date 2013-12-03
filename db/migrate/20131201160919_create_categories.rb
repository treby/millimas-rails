class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.string :description
      t.integer :sort_key

      t.timestamps
    end
  end
end
