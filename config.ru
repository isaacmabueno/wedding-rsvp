require 'sinatra/base'

#models
require './models/ResponsesModel'

#controllers
require './controllers/ApplicationController'
require './controllers/HomeController'

map('/') { run HomeController }
