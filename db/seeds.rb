# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


25.times do
        App.create(os_category: "iOS", price_category: "無料")
        App.create(os_category: "iOS", price_category: "有料")
        App.create(os_category: "macOS", price_category: "無料")
        App.create(os_category: "macOS", price_category: "有料")
end

# 20.times do |no|
#   App.create(
#       :app_id => "app #{no}",
#       :impressions_count => "#{rand(80)} "
#   )
# end