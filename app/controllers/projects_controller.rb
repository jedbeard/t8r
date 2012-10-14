class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    @translation = Translation.new
    respond_to do |format|
      format.html # show.html.hml
      format.xml  { render :xml => @project }
      format.json { render :json => @project }
    end
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
