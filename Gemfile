source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

ruby '2.5.1'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'pg'
gem 'sequel'
gem 'rake'
gem 'require_all'

group :development, :test do
  gem 'pry'
  gem 'dotenv'
end

group :test do
  gem 'rspec'
  gem 'factory_bot'
  gem 'database_cleaner'
end
