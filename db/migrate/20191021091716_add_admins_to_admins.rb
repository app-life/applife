class AddAdminsToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :price_category, :integer
    add_column :admins, :os_category, :integer
  end
end
