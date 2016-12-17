class MangaList < ActiveRecord::Base
  mount_uploader :avatar, MangaUploader

  u = User.new
  u.avatar = params[:file] # Assign a file like this, or

  # like this
  File.open('somewhere') do |f|
    u.avatar = f
  end

  u.save!
  u.avatar.url # => '/url/to/file.png'
  u.avatar.current_path # => 'path/to/file.png'
  u.avatar_identifier # => 'file.png'
end

# u.avatar will never return nil, even if there is no photo associated to it. To check if a photo was saved to the model, use u.avatar.file.nil? instead.
