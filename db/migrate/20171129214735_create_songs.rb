class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.float :duration
      t.string :genra
      t.string :album

      t.timestamps
    end
  end
end
