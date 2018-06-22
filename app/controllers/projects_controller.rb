class ProjectsController < ApplicationController

  before_action :project_access, :only => [:show]

  def index
    @user = User.find_by(id: session[:user_id])
    @projects = @user.projects.uniq
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
      @userproject = UserProject.create(user_id: session[:user_id], project_id: @project.id)
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

  def destroy
    @project = Project.find(params[:id])
    @project.user_projects.each do |userproject|
      if userproject.user_id == session[:user_id]
        userproject.destroy
      end
    end
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

  def project_access

    if Project.all.length < params[:id].to_i
      redirect_to action: "index"
    else
      @users = Project.find(params[:id]).users
      user_check = @users.find do |user|
        user.id == session[:user_id]
      end 
      redirect_to action: "index" unless user_check
    end
  end

end
