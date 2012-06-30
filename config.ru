require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'coffee-script'
require './bootstrap'

run Bootstrap::Application.new