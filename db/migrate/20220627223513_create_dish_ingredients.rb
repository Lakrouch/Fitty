class CreateDishIngredients < ActiveRecord::Migration[7.0]
  def up
    create_table :dish_ingredients do |t|
      t.belongs_to :dish, nil: false
      t.belongs_to :ingredient, nil: false
      t.timestamps
    end
  end

  def down
    drop_table :dish_ingredients
  end
end
