class Project < ApplicationRecord
  has_many :tasks
  has_many :users, through: :tasks

  validates :name, uniqueness: true
  validates :name, presence: true


  def to_dos
    self.tasks.select do |task|
      task.status.status == "To Do"
    end
  end

  def doings
    self.tasks.select do |task|
      task.status.status == "Doing"
    end
  end

  def dones
    self.tasks.select do |task|
      task.status.status == "Done"
    end
  end

end
