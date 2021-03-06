class Comment < ApplicationRecord
  after_create_commit { CommentBroadcastJob.perform_later self}
  belongs_to :post
  belongs_to :user
end
