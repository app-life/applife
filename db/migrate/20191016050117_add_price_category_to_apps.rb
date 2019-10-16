class AddPriceCategoryToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :price_category, :integer
  end
end
