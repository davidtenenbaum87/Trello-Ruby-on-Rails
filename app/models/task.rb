class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :comments
  has_one :status

  validates :title, presence: true
  
  
end
