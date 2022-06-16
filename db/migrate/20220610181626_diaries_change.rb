# frozen_string_literal: true

class DiariesChange < ActiveRecord::Migration[7.0]
  def change
    change_table :diaries do |_t|
      remove_column :diaries, :dish_id
      remove_column :diaries, :time
    end
  end
end
