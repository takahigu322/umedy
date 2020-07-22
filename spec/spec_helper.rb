require 'capybara/rspec'
# remember: you must require 'capybara/rspec' first
require 'capybara-screenshot/rspec'

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

#Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f } #factory_botでエラー出てたのでコメントアウト

ActiveRecord::Migration.maintain_test_schema!

#Capybara::Driver::Base#save_screenshot

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.order = "random"
end
