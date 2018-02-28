class ChangeHouses < ActiveRecord::Migration[5.1]
  def self.up
    change_column :houses, :address, :string, null: false, unique: true
  end

  def self.down
    change_column :houses, :address, :string, null: false
  end
end
