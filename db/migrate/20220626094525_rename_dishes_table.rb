# frozen_string_literal: true
class RenameDishesTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :diaries_tables, :diaries
  end
end
