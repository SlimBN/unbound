class CreateContinents < ActiveRecord::Migration
  def change
    create_table :continents do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
  end
end
