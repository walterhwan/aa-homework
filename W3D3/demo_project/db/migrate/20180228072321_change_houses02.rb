class ChangeHouses02 < ActiveRecord::Migration[5.1]
  def self.up
    change_column :houses, :address, :string, uniqueness: true
  end

  def self.down
    change_column :houses, :address, :string, uniqueness: false
  end
end
