class AddPhotosToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :image_uid,  :string
    add_column :ingredients, :image_name, :string
  end
end
