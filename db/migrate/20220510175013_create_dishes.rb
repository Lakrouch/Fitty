class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :cal
      t.string :ingridients
      t.text :recipe
      t.string :photo
      t.integer :author_id

      t.timestamps
    end
  end
end
