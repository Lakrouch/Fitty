# frozen_string_literal: true

class Ingredient < ApplicationRecord
  dragonfly_accessor :image

  belongs_to :user
end
