class PostComment < ApplicationRecord
    belongs_to :app
    validates :comment, presence: true, length: { maximum: 200 }
end