# frozen_string_literal: true

class DishColumnRename < ActiveRecord::Migration[7.0]
  def change
    rename_column(:dishes, :ingridients, :ingredients)
  end
end
