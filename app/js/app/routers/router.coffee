window.App ?= {}
class App.Router extends Backbone.Router
  routes:
    '': 'home'

  home: ->
    console.log 'loading home route'