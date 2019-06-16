class Chapter < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :post
  validates :body, presence: true
end
