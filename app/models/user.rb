class User < ApplicationRecord
    has_secure_password
    has_many :bookmarks, dependent: :destroy
    has_many :favorites, through: :bookmarks, source: :routes
    has_many :pictures, dependent: :destroy
    validates :email, presence: true, uniqueness: true
end
