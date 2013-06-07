class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :slug
      t.integer :continent_id
      t.string :flag

      t.timestamps
    end
  end
end
