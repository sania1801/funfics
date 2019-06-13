class Comment < ApplicationRecord
  # self.per_page = 10
  after_create_commit { CommentBroadcastJob.perform_later self}
  belongs_to :post
  belongs_to :user
end
