class RenamePeopleTableToPeople < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :people_tables, :people
  end

  def self.down
    rename_table :people, :people_tables
  end
end
