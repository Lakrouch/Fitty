# frozen_string_literal: true

class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name, null: false
      t.float :cal, null: false
      t.string :ingredients, null: false
      t.text :recipe, null: false
      t.string :photo, null: false
      t.integer :author_id, null: false

      t.timestamps
    end
  end
end
