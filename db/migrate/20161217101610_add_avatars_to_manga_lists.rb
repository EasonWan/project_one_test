class AddAvatarsToMangaLists < ActiveRecord::Migration
  def change
    add_column :manga_lists, :avatars, :json
  end
end
