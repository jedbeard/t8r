class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    @translation = Translation.new
  end

  def create
    Project.new(params["project"]).save
    redirect_to projects_path
  end

  def destroy
    Project.find(params["id"]).delete
    redirect_to projects_path
  end
end