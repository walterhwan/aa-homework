class ChangePeople01 < ActiveRecord::Migration[5.1]
  def change
    add_index :people, :name, unique: true
  end
end
