class App < ApplicationRecord
    attachment :image
    enum os_category: { iOS: 0, macOS: 1}
    enum price_category: { 無料: 0, 有料: 1}
end