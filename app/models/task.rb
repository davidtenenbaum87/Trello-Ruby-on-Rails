class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :comments
  belongs_to :status

  validates :title, presence: true
  
  
end
