class CreateIngredientOfDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredient_of_dishes do |t|
      t.belongs_to :dish
      t.belongs_to :ingredient
      t.timestamps
    end
  end
end
