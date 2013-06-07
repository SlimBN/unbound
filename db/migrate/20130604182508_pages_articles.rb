class PagesArticles < ActiveRecord::Migration
  def change
    create_table :pages_articles do |t|
      t.integer :page_id
      t.integer :article_id

      t.timestamps
    end
  end
end
