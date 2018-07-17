class Route < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :ratings, dependent: :destroy
    has_many_attached :pictures

    def avg_rating
        sum = 0.0
        self.ratings.each {|r| sum = sum + r.score }
        sum / self.ratings.count
    end
end
