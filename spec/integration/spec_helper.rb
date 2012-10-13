# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../../config/environment", __FILE__)

require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/rails'
require "webmock/rspec"

WebMock.allow_net_connect!

#available drivers: :rack_test, :selenium, :webkit, :webkit_debug
Capybara.default_driver = :webkit

# rake db:test:prepare