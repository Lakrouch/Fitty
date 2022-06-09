class DishColumnRename < ActiveRecord::Migration[7.0]
  def change
    change_table :dishes do |t|
      rename_column(:dishes, :ingridients, :ingredients)
    end
  end
end