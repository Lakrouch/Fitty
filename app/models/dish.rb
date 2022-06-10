# frozen_string_literal: true

class Dish < ApplicationRecord
  dragonfly_accessor :image
  belongs_to :user
  has_many :notes, dependent: :destroy
end
