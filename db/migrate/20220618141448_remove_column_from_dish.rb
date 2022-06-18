class RemoveColumnFromDish < ActiveRecord::Migration[7.0]
  remove_column :dishes, :author_id
end
