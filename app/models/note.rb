# frozen_string_literal: true

class Note < ApplicationRecord
  validates :dish_id, presence: true

  belongs_to :diary
  has_many :users, through: :diary
  belongs_to :dish
end
