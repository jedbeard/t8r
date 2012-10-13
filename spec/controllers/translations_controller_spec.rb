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

  end

end
