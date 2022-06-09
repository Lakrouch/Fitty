class UpdateDishes < ActiveRecord::Migration[7.0]
  def change
    change_table :dishes do |t|
      t.belongs_to :user
    end
  end
end
