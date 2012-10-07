Bootstrap = {}

Bootstrap.loadApp = ->
  Bootstrap.app = app = new App.Application
  app.start()

$ ->
  Bootstrap.loadApp()