class Dish < ApplicationRecord
	dragonfly_accessor :image
	belongs_to :user
	has_many :diaries
end
