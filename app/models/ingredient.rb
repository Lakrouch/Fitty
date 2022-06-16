# frozen_string_literal: true

class Ingredient < ApplicationRecord
  dragonfly_accessor :image

  validates :name, :image_name, :image_uid, presence: true

  has_many :ingredient_of_dishes, dependent: :destroy
  belongs_to :user
end
