class Project < ApplicationRecord
  has_many :tasks
  has_many :users, through: :tasks

  def to_dos
    self.tasks.select do |task|
      task.status.status == "to do"
    end
  end

  def doings
    self.tasks.select do |task|
      task.status.status == "doing"
    end
  end

  def dones
    self.tasks.select do |task|
      task.status.status == "done"
    end
  end

end
