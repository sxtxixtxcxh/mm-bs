#= require 'lib/jquery-1.9.1'
#= require 'lib/lodash-1.2.1'
#= require 'lib/backbone-1.0.0'
#= require 'lib/backbone-parse'
#= require 'lib/icanhaz-0.10'
#= require 'lib/geoPosition'
#= require 'lib/strftime'
#= require 'lib/ƒ'
#= require_tree './config'
#= require_tree './initializers'
#= require 'app'
#= require_self
#= require 'router'
#= require_tree './models'
#= require_tree './views'
#= require_tree './collections'
#

$ ->
  console.log 'document ready'
  App.router = new App.Router
  App.listenTo App.router, 'route', ->
    _gaq.push(['_trackPageview',location.pathname + location.search  + location.hash])

  Backbone.history.start
    pushState: App.environment is 'production'
