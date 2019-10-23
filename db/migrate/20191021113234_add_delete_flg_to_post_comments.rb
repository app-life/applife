class AddDeleteFlgToPostComments < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :delete_flg, :boolean
  end
end
