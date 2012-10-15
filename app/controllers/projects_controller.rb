class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    @translation = Translation.new

    respond_to do |format|
      format.html # show.html.haml
      format.xml  { render :xml => @project.to_xml(include_sub_obj(@project)) }
      format.json { render :json => @project.to_json(include_sub_obj(@project)) }
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

  private

  def include_sub_obj(project)
    {
      :include => {
        :translations => { :translations => project.translations }
      }
    }
  end
end
