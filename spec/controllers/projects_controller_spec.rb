require "spec_helper"

describe ProjectsController do

  context "routes" do

    context "to index" do
      it "simple" do
        { :get => "projects" }.should route_to(
          :controller => "projects",
          :action => "index"
        )
      end

      it "after create" do
        { :post => "projects",
          :project => {
            :name => "ger",
            :description => "ger"
          }
        }.should route_to(
          :controller => "projects",
          :action => "create"
        )
      end

      it "after delete" do
        { :delete => "projects/4" }.should route_to(
          :controller => "projects",
          :action => "destroy",
          :id => "4"
        )
      end
    end

    it "to show" do
      { :get => "projects/1" }.should route_to(
        :controller => "projects",
        :action => "show",
        :id => "1"
      )
    end

  end

  context "destroy" do
    it "deletes the give project" do
      p = Project.new
      p.save
      delete :destroy, :id => p.id

      response.should redirect_to(:projects)
      Project.all.should be_empty
    end
  end

  context "index" do
    it "renders the index page" do
      get :index

      response.should render_template(:index)
    end
  end

  context "show" do
    it "renders the show page" do
      p = Project.new
      p.save
      get :show, :id => p.id

      response.should render_template(:show)
    end
  end

  context "create" do
    it "a new Project" do
      post :create, :project => { :name => "test project", :description => "this is a test project" }

      response.should redirect_to(:projects)
      project = Project.all.first
      project.should be_a Project
      project.name.should == "test project"
      project.description.should == "this is a test project"
    end
  end
end
