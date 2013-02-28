window.App ?= {}
class App.View extends Backbone.View
  className: 'simple-view'
  template: _.template '''
  <img src='/images/fonzie.jpg'>
  <h1>Good to go...</h1>
  <p>Happy coding</p>
  '''

  render: ->
    @$el.html @template
    this