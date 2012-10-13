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
        { :post => "projects", "project" => { "name" => "ger", "description" => "ger" } }.should route_to(
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

end
