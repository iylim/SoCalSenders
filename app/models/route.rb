class Route < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :ratings, dependent: :destroy
    has_many_attached :pictures, dependent: :destroy
    has_many :bookmarks, dependent: :destroy

    def avg_rating
        return 0 if self.ratings.count == 0
        sum = 0.0
        self.ratings.each {|r| sum = sum + r.score }
        sum / self.ratings.count
    end
end
