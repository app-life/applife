class AddOsCategoryToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :os_category, :integer
  end
end
