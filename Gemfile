source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

ruby '2.5.1'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'sequel'

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'rspec'
  gem 'factory_bot'
  gem 'database_cleaner'
end
