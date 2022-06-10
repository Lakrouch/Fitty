# frozen_string_literal: true

class AddPhotosToDishes < ActiveRecord::Migration[7.0]
  def change
    remove_column :dishes, :photo, :string
    add_column :dishes, :image_uid,  :string
    add_column :dishes, :image_name, :string
  end
end
