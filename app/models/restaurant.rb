class Restaurant < ApplicationRecord
    has_one_attached :image
    has_many :restaurant_reviews
end
