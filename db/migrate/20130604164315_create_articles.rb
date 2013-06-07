class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :cover
      t.integer :user_id
      t.boolean :is_deleted
      t.string :slug
      t.boolean :is_draft
      t.integer :category_id
      t.string :size
      t.boolean :featured
      t.boolean :superfeatured

      t.timestamps
    end
  end
end
