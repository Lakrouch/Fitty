# frozen_string_literal: true

class CreateDiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :diaries do |t|
      t.integer :user_id, null: false
      t.integer :dish_id, null: false
      t.timestamp :time, null: false

      t.timestamps
    end
  end
end
