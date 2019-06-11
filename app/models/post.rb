  class Post < ApplicationRecord
    self.per_page = 10
  has_many :comments, dependent: :destroy
  has_many :chapters, dependent: :destroy
  belongs_to :genre
  belongs_to :user
  validates :title, presence: true,
            length: { minimum: 5 }
end
