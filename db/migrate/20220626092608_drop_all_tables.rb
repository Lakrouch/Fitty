# frozen_string_literal: true
class DropAllTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :diaries
    drop_table :profiles
    drop_table :ingredients
    drop_table :notes
    drop_table :dishes
    drop_table :dish_ingredients
    drop_table :users 
  end
end
