class Upload < ApplicationRecord
	belongs_to :user
	mount_uploaders :avatars, AvatarUploader
end
