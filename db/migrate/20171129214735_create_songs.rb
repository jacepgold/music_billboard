class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name, null: false
      t.float :duration
      t.string :genre, null: false
      t.string :album

      t.timestamps
    end
  end
end
