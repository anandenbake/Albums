class Photo < ApplicationRecord
  belongs_to :album
  mount_uploaders :avatars, AvatarUploader

end
