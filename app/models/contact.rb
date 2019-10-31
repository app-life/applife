class Contact < ApplicationRecord
    validates :title, presence: true, length: { maximum: 30 }
    validates :body, presence: true, length: { maximum: 250 }
end
