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

end
