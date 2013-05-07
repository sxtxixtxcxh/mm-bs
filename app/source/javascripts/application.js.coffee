#= require 'lib/jquery-1.9.1'
#= require 'lib/json2'
#= require 'lib/icanhaz-0.10'
#= require 'lib/lodash-1.0.1'
#= require 'lib/backbone-0.9.10'
#= require_self
#= require_tree './collections'
#= require_tree './models'
#= require_tree './views'
#

window._gaq ||= []

_gaq.push(['_setAccount', 'UA-102827-28']) # <-- be sure to change this
_gaq.push(['_trackPageview',location.pathname + location.search  + location.hash])

window.App ||=
  Views: {}
  Models: {}
  Collections: {}
  Helpers: {}
  views: {}
  collections: {}
  models: {}
  environment: 'production'
  console:
    log: ->
    error: ->
    warn:->

#prevent console logs from throwing an exception
window.console = App.console if App.environment is 'production'

_.extend App, Backbone.Events

$ ->
  console.log 'document ready'
  App.router = new App.Router
  App.listenTo App.router, 'route', ->
    _gaq.push(['_trackPageview',location.pathname + location.search  + location.hash])

  Backbone.history.start
    pushState: App.environment is 'production'

class App.Router extends Backbone.Router
  routes:
    "": "home"

  home: ->
    console.log 'home'
