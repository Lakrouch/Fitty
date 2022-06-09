class UpdateIngredients < ActiveRecord::Migration[7.0]
  def change
    change_table :ingredients do |t|
      remove_column :ingredients, :author_id
      t.belongs_to :user
    end
  end
end
