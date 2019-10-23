class AddImpressionsCountToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :impressions_count, :integer
  end
end
