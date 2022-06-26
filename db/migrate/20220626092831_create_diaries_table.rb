# frozen_string_literal: true
class CreateDiariesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :diaries_tables do |t|
      t.bigint :user_id, nil: false
      t.timestamps
    end
  end
end
