class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    drop_table :dishes
    create_table :dishes do |t|
      t.string :name
      t.float :cal
      t.string :ingredients
      t.text :recipe
      t.string :photo
      t.integer :author_id

      t.timestamps
    end
  end
end
