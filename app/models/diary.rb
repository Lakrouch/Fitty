class Diary < ApplicationRecord
	has_one :user
	has_one :dish
end
