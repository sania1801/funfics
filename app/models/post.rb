  class Post < ApplicationRecord
    include SearchCop

    mount_uploader :place, ImageUploader
    self.per_page = 9
    acts_as_taggable
    acts_as_taggable_on
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :chapters, dependent: :destroy
    belongs_to :genre
    belongs_to :user
    validates :title,:description,:place, presence: true
    search_scope :search do
      attributes :title, :description
      attributes comment: 'comments.message'
      attributes genre: 'genre.name'
      attributes chapter: 'chapters.body'
      options :all, :type => :fulltext
    end
end
