class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end
  
  def show
    @project = Project.find(params[:id])
    @task = Task.new
  end

  def new 
    @project = Project.new
  end 

  def create
    @project = Project.new(project_params)
    if @project.valid?
      @project.save
      redirect_to @project
    else 
      render :new
    end
  end 

  def edit 
    @project = Project.find(params[:id])
  end 

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to project_path
  end

  private 
  
  def project_params
    params.require(:project).permit(:name, :description)
  end 
    

end
