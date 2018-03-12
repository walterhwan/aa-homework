class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.integer :album_id, null: false
      t.string :title, null: false
      t.integer :ord, null: false
      t.string :lyrics
      t.boolean :is_regular?, default: true

      t.timestamps
    end
  end
end
