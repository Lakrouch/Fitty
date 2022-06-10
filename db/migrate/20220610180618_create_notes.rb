class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.belongs_to :user
      t.belongs_to :diary
      t.timestamp :time, null: false
      t.belongs_to :dish

      t.timestamps
    end
  end
end
