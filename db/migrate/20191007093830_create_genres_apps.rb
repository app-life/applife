class CreateGenresApps < ActiveRecord::Migration[5.2]
  def change
    create_table :genres_apps do |t|
      t.integer :genre_id
      t.integer :item_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
