class CreateBillboards < ActiveRecord::Migration[5.1]
  def change
    create_table :billboards do |t|
      t.string :title
      t.string :genre
      t.string :artist
      t.string :song
      t.integer :rank

      t.timestamps
    end
  end
end
