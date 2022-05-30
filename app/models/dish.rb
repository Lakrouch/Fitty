class Dish < ApplicationRecord
	dragonfly_accessor :image
	has_one :user
end
