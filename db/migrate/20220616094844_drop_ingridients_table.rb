class DropIngridientsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :ingridients
  end
end