class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :version
      t.string :slug
      t.string :couverture
      t.text :special
      t.integer :journal_id
      t.string :edition

      t.timestamps
    end
  end
end
