# frozen_string_literal: true
class CreateDishIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :dish_ingredients do |t|
      t.bigint :dish_id, nil: false
      t.bigint :ingredient_id, nil: false

      t.timestamps
    end
  end
end
