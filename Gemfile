source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap'
gem 'capybara-screenshot'
gem 'coffee-rails'
gem 'humanize'
gem 'jbuilder'
gem 'jquery-rails'
gem 'puma'
gem 'rails'
gem 'rubocop', require: false
gem 'sass-rails'
gem 'solargraph'
gem "sprockets-rails"
gem 'turbolinks'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'uglifier'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'sqlite3'
  gem "rspec-rails"
end

group :development do
  gem 'listen'
  gem 'spring-watcher-listen'
  gem 'spring'
  gem 'web-console'
end

group :test do
  gem 'rspec-html-matchers'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
end

group :production do
  gem 'pg'
end
