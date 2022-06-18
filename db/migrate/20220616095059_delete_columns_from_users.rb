class DeleteColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.remove :url
      t.remove :provider
    end
  end
end
