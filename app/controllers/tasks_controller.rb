class TasksController < ApplicationController

  def new
    @task = Task.new
    
  end

  def create
    byebug
    @task = Task.new(task_params)

    if @task.valid?
      @task.save
      redirect_to @task
    else
      render :new
    end
    
  end

  def edit
    
  end
  
  def update
    
  end  

  def show
    @task = Task.find(params[:id])
    @comment = Comment.new
  end
  
  private
  def task_params
    params.require(:task).permit(:title, :user_id, :project_id, :status_id)
  end
  

end
