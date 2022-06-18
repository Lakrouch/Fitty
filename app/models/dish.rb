# frozen_string_literal: true

class Dish < ApplicationRecord
  dragonfly_accessor :image

  validates :name, :cal, :recipe, :image_name, presence: true

  belongs_to :user
  has_many :notes, dependent: :destroy
  has_many :dish_ingredients
  has_many :ingredients, through: :dish_ingredients, dependent: :destroy
end
