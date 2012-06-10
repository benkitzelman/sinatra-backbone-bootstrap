require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'coffee-script'
require './bootstrap'

Bootstrap::Application.run! :host => 'localhost', :port => 9090