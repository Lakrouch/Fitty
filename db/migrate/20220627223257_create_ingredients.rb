class CreateIngredients < ActiveRecord::Migration[7.0]
  def up
    create_table :ingredients do |t|
      t.string :name, nil: false
      t.string :image_uid
      t.string :image_name
      t.belongs_to :user

      t.timestamps
    end
  end

  def down
    drop_table :ingredients
  end
end
