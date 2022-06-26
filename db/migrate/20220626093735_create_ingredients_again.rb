class CreateIngredientsAgain < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name, nil: false
      t.string :image_uid
      t.string :image_name
      t.bigint :user_id

      t.timestamps
    end
  end
end
