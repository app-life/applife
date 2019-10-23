class AddAppIdToPostComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :post_comments, :app, foreign_key: true
  end
end
