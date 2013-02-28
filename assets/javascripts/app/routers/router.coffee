window.App ?= {}
class App.Router extends Backbone.Router
  routes:
    '': 'home'

  home: ->
    $('#app').html (new App.View).render().el
