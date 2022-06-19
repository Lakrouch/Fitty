# frozen_string_literal: true

class Ingredient < ApplicationRecord
  dragonfly_accessor :image

  validates :name, :image_name, :image_uid, presence: true

  has_many :dish_ingredients
  has_many :dish, through: :dish_ingredients, dependent: :destroy
  belongs_to :user
end
