class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :issue_id
      t.string :name
      t.string :background
      t.string :slug
      t.integer :order

      t.timestamps
    end
  end
end
