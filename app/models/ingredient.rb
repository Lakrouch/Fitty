# frozen_string_literal: true

class Ingredient < ApplicationRecord
  dragonfly_accessor :image
  has_many :ingredient_of_dishes, dependent: :destroy
  belongs_to :user
end
