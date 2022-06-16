# frozen_string_literal: true

class Dish < ApplicationRecord
  dragonfly_accessor :image

  validates :name, :cal, :ingredients, :recipe, :image_name, :image_uid, presence: true

  belongs_to :user
  has_many :notes, dependent: :destroy
  has_many :ingredient_of_dishes, dependent: :destroy
end
