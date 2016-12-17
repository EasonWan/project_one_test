class CreateMangaLists < ActiveRecord::Migration
  def change
    create_table :manga_lists do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
