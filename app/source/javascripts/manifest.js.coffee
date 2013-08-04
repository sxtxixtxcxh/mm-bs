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
#= require_self
#= require 'router'
#= require_tree './models'
#= require_tree './views'
#= require_tree './collections'
#= require 'app'
#

window.App ||=
  Views: {}
  Models: {}
  Collections: {}
  Helpers: {}
  views: {}
  collections: {}
  models: {}
  environment: config.environment
  console:
    log: ->
    error: ->
    warn: ->

#prevent console logs from throwing an exception
window.console = App.console if App.environment is 'production'

_.extend App, Backbone.Events
