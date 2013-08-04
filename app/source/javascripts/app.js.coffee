$ ->
  console.log 'document ready'
  App.router = new App.Router
  App.listenTo App.router, 'route', ->
    _gaq.push(['_trackPageview',location.pathname + location.search  + location.hash])

  Backbone.history.start
    pushState: App.environment is 'production'
