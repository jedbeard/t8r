require "spec_helper"

describe TranslationsController do

  context "routes" do

    it "to create" do
      { :post => "translations",
        :translation => {
          :key => "key_value",
          :translation => "translation_value",
          :project_id => "1"
        }
      }.should route_to(
        :controller => "translations",
        :action => "create"
      )
    end

    it "to destroy" do
      { :delete => "translations/1" }.should route_to(
        :controller => "translations",
        :action => "destroy",
      :id => "1")
    end
  end

  context "create" do
    it "a new translation" do
      post :create,
      :translation => {
        :key => "bla",
        :to_translate => "translate me",
        :translation => "or me ;)",
        :project_id => "1"
      }
      
      response.should redirect_to(project_path("1"))
    end
  end

  context "destroy" do
    it "deletes the give translation" do
      t = Translation.new
      t.project_id = "42"
      t.save
      delete :destroy, :id => t.id

      response.should redirect_to(project_path(t.project_id))
    end
  end
end
