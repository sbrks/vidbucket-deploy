
require 'rubygems'
require 'bundler'

Bundler.require

# require './config/initializers/carrierwave'
require './models/video'
require './models/videouploader'
require './models/user'
require './models/bucket'
require './helpers/videohelper'
require './app'

run Vbucket
