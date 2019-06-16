class User < ApplicationRecord
  def account_active?
    blocked_at.nil?
  end
  def active_for_authentication?
    super && active?
  end
  def inactive_message
     active? ? super : :locked
  end

  # require 'carrierwave'
  # require 'carrierwave/orm/activerecord'
  mount_uploader :avatar, ImageUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :confirmable, :validatable
  has_many :likes, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :username, uniqueness: true, presence: true
end
