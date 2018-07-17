class User < ApplicationRecord
    has_secure_password
    has_many :bookmarks, dependent: :destroy
    has_many :favorites, through: :bookmarks, source: :routes
    has_many :pictures, dependent: :destroy
    has_many :ratings, dependent: :destroy
    has_many :comments,  dependent: :destroy
    validates :email, presence: true, uniqueness: true
end