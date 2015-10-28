class ProjectsController < ApplicationController
  before_action :set_project, only:[:show, :edit, :update, :destroy]
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
  def project_params
    params.require(:project).permit(:name, :duration, :developer_id)
  end
end
