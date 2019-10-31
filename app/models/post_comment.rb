class PostComment < ApplicationRecord
    belongs_to :app, optional: true
    validates :comment, presence: true, length: { maximum: 200 }
end