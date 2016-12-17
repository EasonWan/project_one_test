class AddAvatarToMangaList < ActiveRecord::Migration
  def change
    add_column :manga_lists, :avatar：string, :string
  end
end
