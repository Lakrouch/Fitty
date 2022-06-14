# frozen_string_literal: true

class Dish < ApplicationRecord
  dragonfly_accessor :image
  belongs_to :user
  has_many :notes, dependent: :destroy
  has_many :ingredient_of_dishes, through: :ingredient_of_dishes, dependent: :destroy
end
