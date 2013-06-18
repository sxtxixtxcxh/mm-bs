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
    warn:->

#prevent console logs from throwing an exception
window.console = App.console if App.environment is 'production'

_.extend App, Backbone.Events
