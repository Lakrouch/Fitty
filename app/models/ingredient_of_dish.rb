# frozen_string_literal: true

class IngredientOfDish < ApplicationRecord
  belongs_to :dish
  belongs_to :ingredient

  scope :belongs_to_dish, ->(dish_id) { where(dish_id: dish_id) }
end
