# frozen_string_literal: true

class RemoveUsersId < ActiveRecord::Migration[7.0]
  def change
    change_table :profiles do |t|
      t.remove :users_id
    end
  end
end
