class ChangeHouses01 < ActiveRecord::Migration[5.1]
  def self.up
    change_column :houses, :address, :string, unique: true
  end

  def self.down
    change_column :houses, :address, :string, unique: false
  end
end
