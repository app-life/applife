class App < ApplicationRecord
    has_many :post_comments
    attachment :image
    enum os_category: { iOS: 0, macOS: 1}
    #enum price_category: { 無料: 0, 有料: 1}
    enum price_category: { free: 0, pay: 1}
    is_impressionable counter_cache: true
end