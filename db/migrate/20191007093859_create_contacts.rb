class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :mail
      t.datetime :created_at
      t.datetime :updated_at


      t.timestamps
    end
  end
end
