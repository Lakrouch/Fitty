class DeleteTimeFromDiaries < ActiveRecord::Migration[7.0]
  remove_column :diaries, :time
end
