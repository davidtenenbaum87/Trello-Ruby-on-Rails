class Project < ApplicationRecord
  has_many :tasks
  has_many :user_projects
  has_many :users, through: :user_projects

  validates :name, presence: true

  def to_dos
    Task.order(:sort).all.select do |task|
      task.status.status == "To Do" && task.project == self
    end
  end

  def doings
    Task.order(:sort).all.select do |task|
      task.status.status == "Doing" && task.project == self
    end
  end

  def dones
    Task.order(:sort).all.select do |task|
      task.status.status == "Done" && task.project == self
    end
  end

end
