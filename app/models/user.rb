class User < ApplicationRecord
    before_save { self.name = self.name.downcase }
    validates :name, presence: true, length: { maximum: 20 },
                     uniqueness: { case_sensitive: false }

    has_many :posts
    has_many :comments
end
