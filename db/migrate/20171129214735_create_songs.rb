class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.belongs_to :artist, index: true
      t.float :duration
      t.string :genre, null: false
      t.string :album
      t.timestamps
    end
  end
end
