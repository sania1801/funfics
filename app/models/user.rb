class User < ApplicationRecord
  # require 'carrierwave'
  # require 'carrierwave/orm/activerecord'
  # mount_uploader :avatar, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :confirmable, :validatable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :username, uniqueness: true, presence: true
end
