# frozen_string_literal: true
class CreateProfilesAgain < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.boolean :role, default: false
      t.bigint :user_id

      t.timestamps
    end
  end
end
