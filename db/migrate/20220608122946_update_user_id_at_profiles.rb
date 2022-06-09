class UpdateUserIdAtProfiles < ActiveRecord::Migration[7.0]
  def change
    change_table :profiles do |t|
      t.belongs_to :user
    end
  end
end
