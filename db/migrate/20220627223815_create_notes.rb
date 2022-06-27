class CreateNotes < ActiveRecord::Migration[7.0]
  def up
    create_table :notes do |t|
      t.belongs_to :diary
      t.datetime :time, precision: nil, null: false
      t.belongs_to :dish
      t.timestamps
    end
  end

  def down
    drop_table :notes
  end
end
