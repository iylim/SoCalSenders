class Route < ApplicationRecord
    belongs_to :user
    has_many :pictures, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :ratings, dependent: :destroy
    has_many_attached :image
end
