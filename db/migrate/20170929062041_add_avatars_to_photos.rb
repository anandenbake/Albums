class AddAvatarsToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :avatars, :json
  end
end
