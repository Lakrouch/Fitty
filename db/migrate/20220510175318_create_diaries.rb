class CreateDiaries < ActiveRecord::Migration[7.0]
  def change
    drop_table :diaries
    create_table :diaries do |t|
      t.integer :user_id
      t.integer :dish_id
      t.timestamp :time

      t.timestamps
    end
  end
end
