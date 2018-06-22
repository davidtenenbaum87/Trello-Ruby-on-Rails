class User < ApplicationRecord
  has_many :tasks
  has_many :comments
  has_many :user_projects
  has_many :projects, through: :user_projects

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  has_secure_password

end
