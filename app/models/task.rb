class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :comments
  belongs_to :status

  validates :title, presence: true
  validates :user_id, presence: true
  validates :status_id, presence: true

  include RailsSortable::Model
  set_sortable :sort  # Indicate a sort column
  # If you do NOT want timestamps to be updated on sorting, use the following option.
  # set_sortable :sort, without_updating_timestamps: true
  
end
