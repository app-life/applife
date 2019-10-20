class CreateCommentchecks < ActiveRecord::Migration[5.2]
  def change
    create_table :commentchecks do |t|

      t.timestamps
    end
  end
end
