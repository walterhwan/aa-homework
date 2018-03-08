class AddSessionTokenToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :session_token, :string, null: false
    add_index :users, :session_token, unique: true
  end
end
