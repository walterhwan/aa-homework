class ChangeHouses03 < ActiveRecord::Migration[5.1]
  def change
    add_index :houses, :address, unique: true
  end
end
