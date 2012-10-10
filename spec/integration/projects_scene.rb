# -*- encoding : utf-8 -*-
require "integration/spec_helper"

describe "/projects/index" do
  it "root" do
    visit "/"
    page.should have_content('Alle noch offenen Übersetzungen')
  end
end
