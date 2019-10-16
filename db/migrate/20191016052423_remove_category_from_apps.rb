class RemoveCategoryFromApps < ActiveRecord::Migration[5.2]
  def change
    remove_column :apps, :category, :string
  end
end
