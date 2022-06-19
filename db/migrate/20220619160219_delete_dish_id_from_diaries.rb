class DeleteDishIdFromDiaries < ActiveRecord::Migration[7.0]
  remove_column :diaries, :dish_id
end
