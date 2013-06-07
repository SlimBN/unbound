class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.string :affiche
      t.integer :user_id
      t.integer :country_id
      t.integer :state_id
      t.integer :continent_id

      t.timestamps
    end
  end
end
