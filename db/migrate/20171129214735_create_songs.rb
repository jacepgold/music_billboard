class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :artist, null: false
      t.float :duration
      t.string :genre
      t.string :album
      t.belongs_to :artist, index: true, foreign_key: true
      # t.belongs_to :billboard, index: true, foreign_key: true
      t.timestamps
    end
  end
end
