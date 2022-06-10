class Note < ApplicationRecord
  belongs_to :diary
  belongs_to :dish
end
