require "spec_helper"

describe ProjectsController do

  context "routes" do

    it "to index" do
      { :get => "projects" }.should route_to(
        :controller => "projects",
        :action => "index"
      )
    end

    it "to index after create" do
      { :post => "projects", "project" => { "name" => "ger", "description" => "ger" } }.should route_to(
        :controller => "projects",
        :action => "create"
      )
    end

    it "to index after delete" do
      { :delete => "projects/4" }.should route_to(
        :controller => "projects",
        :action => "destroy",
        :id => "4"
      )
    end

  end

end
