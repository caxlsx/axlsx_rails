ENV["RAILS_ENV"] ||= "test"

# Set up bundle to use gems
require 'bundler/setup'
Bundler.setup

# Require Rails
require 'rails'

# Require the test app's environment
require 'rails_app/config/environment'

# Set up test gems
require 'rspec/rails'
require 'capybara/rspec'
require 'roo'
begin
  # Used for Ruby 2.x
  require 'byebug'
rescue LoadError
  # Used for Ruby 3.x
  require 'debug'
end

ActiveRecord::Migration.maintain_test_schema!

Dir[Rails.root.join("../../spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.color = true
  config.formatter = 'documentation'
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
  config.filter_run_when_matching :focus
end

# TODO: move to the support folder
module ::RSpec::Core
  class ExampleGroup
    include Capybara::DSL
    include Capybara::RSpecMatchers
  end
end
