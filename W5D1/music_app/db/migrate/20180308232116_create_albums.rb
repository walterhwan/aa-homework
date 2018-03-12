class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.integer :band_id, null: false
      t.string :title, null: false
      t.integer :year, null: false, inclusion: (0..9999)
      t.boolean :is_studio?, default: true

      t.index :band_id

      t.timestamps
    end
  end
end
