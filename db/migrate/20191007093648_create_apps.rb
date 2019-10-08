class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.integer :app_id
      t.integer :genre_id
      t.string :app_name
      t.string :genre
      t.string :category
      t.integer :price
      t.text :jacket_image_id
      t.datetime :updated_at

      t.timestamps
    end
  end
end
