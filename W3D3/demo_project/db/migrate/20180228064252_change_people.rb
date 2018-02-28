class ChangePeople < ActiveRecord::Migration[5.1]
  def self.up
    change_column :people, :name, :string, null: false, unique: true
  end

  def self.down
    change_column :people, :name, :string, null: false
  end
end
