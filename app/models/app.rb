class App < ApplicationRecord
    attachment :image
    enum os_category: { iOS: 0, macOS: 1}
    enum price_category: { free: 0, pay: 1}
end