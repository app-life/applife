class AddPostCommentsToPostComments < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :apprval, :boolean, default:false
  end
end
