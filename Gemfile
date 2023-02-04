source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 7.0.4', '>= 7.0.4.2'

gem 'sprockets-rails'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'importmap-rails'

gem 'turbo-rails'

gem 'stimulus-rails'

gem 'jbuilder'

gem 'pry', '~> 0.14.2'

group :development, :test do
  gem 'rspec-rails'
end

group :development do
  gem 'rubocop', '~> 1.44.1'
  gem 'rubocop-performance', '~> 1.15.2'
  gem 'rubocop-rspec', '~> 2.18.1'
end

gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem 'web-console'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'shoulda-matchers'
  # Easy installation and use of web drivers to run system tests with browsers
end
