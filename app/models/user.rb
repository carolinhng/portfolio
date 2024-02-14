class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_many :experiences
  has_many :projects

  validates :linkedin_url, presence: true
  validates :github_user_url, presence: true

end