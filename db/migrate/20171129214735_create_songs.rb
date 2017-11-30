class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.belongs_to :artist, index: true, foreign_key: true
      t.belongs_to :billboard, index: true, foreign_key: true
      t.float :duration
      t.string :genre, null: false
      t.string :album
      t.timestamps
    end
  end
end
