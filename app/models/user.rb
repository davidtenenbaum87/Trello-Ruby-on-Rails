class User < ApplicationRecord
  has_many :tasks
  has_many :projects, through: :tasks
  has_many :comments

  # def authenticate
  #   User.all.find_by(id: self.id)
  # end

  has_secure_password

end
