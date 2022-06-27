class CreateDiaries < ActiveRecord::Migration[7.0]
  def up
    create_table :diaries do |t|
      t.belongs_to :user, nil: false
      t.timestamps
    end
  end

  def down
    drop_table :diaries
  end
end
