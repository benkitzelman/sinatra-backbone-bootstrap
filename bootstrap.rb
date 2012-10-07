$LOAD_PATH << File.dirname(__FILE__)

require 'rubygems'
require 'bundler/setup'

if ENV['RACK_ENV'] == 'test'
  require 'rack/test'
end

require 'sinatra'
require 'sinatra/url_for'
require 'coffee-script'
require 'lib/bootstrap'
require 'app/controllers/base_controller'
[
  'lib', 'app', 'app/controllers', 'app/models', 'app/config/initializers'
].each do |folder|
  Dir["#{folder}/*.rb"].each {|file| require file }
end

require "app/config/app_config"
require "app/config/#{Bootstrap.environment}"
require 'app/application'
