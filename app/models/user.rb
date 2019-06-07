class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :confirmable,
         :validatable
  has_many :posts, dependent: :destroy
  # has_many :comments, dependent: :destroy
  validates :username, uniqueness: true, presence: true
end