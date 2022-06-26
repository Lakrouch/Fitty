# frozen_string_literal: true
class CreateNotesAgain < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.bigint :diary_id
      t.datetime :time, precision: nil, null: false
      t.bigint :dish_id

      t.timestamps
    end
  end
end
