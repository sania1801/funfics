class UserProfile < ApplicationRecord
  mount_uploader :avatar, ImageUploader
end
