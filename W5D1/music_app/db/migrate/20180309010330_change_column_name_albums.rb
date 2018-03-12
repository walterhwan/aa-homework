class ChangeColumnNameAlbums < ActiveRecord::Migration[5.1]
  def change
    remove_column :albums, :year
    add_column :albums, :yr, :integer, null: false
  end
end
