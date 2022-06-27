class CreateUsers < ActiveRecord::Migration[7.0]
  def up
    create_table :users do |t|
      t.string :email, default: ' ', null: false
      t.string :encrypted_password, default: ' ', null: false
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
