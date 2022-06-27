class CreateProfiles < ActiveRecord::Migration[7.0]
  def up
    create_table :profiles do |t|
      t.string :name
      t.boolean :role, default: false
      t.belongs_to :user

      t.timestamps
    end
  end

  def down
    drop_table :profiles
  end
end
