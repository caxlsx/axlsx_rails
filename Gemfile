source "http://rubygems.org"

# Declare your gem's dependencies in axlsx_rails.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

case ENV['RAILS_VERSION']
when '3.1', '3.2'
  gem 'rails', "~> #{ENV['RAILS_VERSION']}.0"
when '4.0'
  # TODO: Use as a gem, when rails 4 will be released
  gem 'rails', github: 'rails/rails'
  gem 'arel',  github: 'rails/arel'
  gem 'activerecord-deprecated_finders', github: 'rails/activerecord-deprecated_finders'
  gem 'protected_attributes', github: 'rails/protected_attributes'
end

# jquery-rails is used by the dummy application
gem "jquery-rails"

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'
