class RemoveUserIdColumnFromNotes < ActiveRecord::Migration[7.0]
  remove_column :notes, :user_id
end
