window.App ?= {}
class App.Application
  start: ->
    @router = new App.Router
    Backbone.history.start()
    console.log 'ready to go...'