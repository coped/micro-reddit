class Comment < ApplicationRecord
    validates :body,    presence: true, length: { maximum: 40_000 }
    validates :user_id, presence: true
    validates :post_id, presence: true

    belongs_to :post
    belongs_to :user
end
