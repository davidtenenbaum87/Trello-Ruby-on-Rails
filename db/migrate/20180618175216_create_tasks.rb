class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.belongs_to :user
      t.belongs_to :project
      t.belongs_to :status
      t.integer :sort  # for RailsSortable
      t.timestamps
    end
  end
end
