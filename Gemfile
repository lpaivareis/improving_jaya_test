# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]

  #  Use rspec for testing
  gem "rspec-rails", "~> 6.0.0"

  # Use rubocop for linting
  gem "rubocop", "~> 1.42"

  # Use rubocop-rails for linting
  gem "rubocop-rails", "~> 2.17", ">= 2.17.4"

  # Use rubocop-rspec for linting
  gem "rubocop-rspec", "~> 2.16"

  # Use rubocop-performance for linting
  gem "rubocop-performance", "~> 1.15", ">= 1.15.2"

  # Use byebug for debugging
  gem "byebug", "~> 11.1", ">= 11.1.3"

  # Use database_cleaner for cleaning up test data
  gem "database_cleaner", "~> 2.0", ">= 2.0.1"

  # Use shoulda-matchers for testing
  gem "shoulda-matchers", "~> 5.0"

  # Use factory_bot_rails for testing
  gem "factory_bot_rails", "~> 6.2"

  # Use faker for testing
  gem "faker", "~> 3.1"

  # Use aewsome_print for debugging
  gem "awesome_print", "~> 1.9", ">= 1.9.2"
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
