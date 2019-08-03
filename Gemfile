source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# gem 'mini_racer', platforms: :ruby
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'sqlite3'
  gem "rails-controller-testing", "~> 1.0"
  gem "rspec-rails", "~> 3.7.0"
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
end

group :production do
  gem 'pg', '~> 0.18'
end

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '= 4.3.1'
gem 'capybara-screenshot', '~> 1.0'
gem 'coffee-rails', '~> 4.2'
gem 'humanize', '~> 2.1'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2'
gem 'rubocop', require: false
gem 'sass-rails', '~> 5.0'
gem 'simplecov', require: false, group: :test
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'uglifier', '>= 1.3.0'
gem "sprockets-rails", "~> 3.2"
