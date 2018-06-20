class TasksController < ApplicationController

  def new
    @task = Task.new
    
  end

  def create
    @task = Task.new(task_params)

    if @task.valid?
      @task.save
      redirect_to @task
    else
      @project = Project.all.find(task_params[:project_id])
      redirect_to @project
    end
    
  end

  def edit
    @task = Task.find(params[:id])
    @project = Project.find_by(id: @task.project_id)
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to @task
    # fix to render if we have time
    # render_to_string "projects/#{@task.project_id}"
  end  

  def show
    @task = Task.find(params[:id])
    @comment = Comment.new
  end

  def destroy
    # byebug
    @task = Task.find(params[:id])
    @project = @task.project_id
    @task.destroy
    redirect_to project_path(@project)
  end
  
  
  private
  def task_params
    params.require(:task).permit(:title, :user_id, :project_id, :status_id)
  end
  

end
