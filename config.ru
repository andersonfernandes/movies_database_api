require 'rubygems'
require 'bundler'

Bundler.require(:default, ENV['RACK_ENV'].to_sym)
Dotenv.load

require './db/database'
run Database.init

require './app'
run MoviesDatabase
