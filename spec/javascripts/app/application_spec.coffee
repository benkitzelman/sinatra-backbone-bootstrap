describe 'App.Application', ->
  beforeEach ->
    sinon.stub Backbone.history, 'start', ->
    @app = new App.Application

  afterEach ->
    Backbone.history.start.restore()

  describe '.start', ->
    beforeEach ->
      sinon.stub App, 'Router', Backbone.Router
      @app.start()

    afterEach ->
      App.Router.restore()

    it 'should load the application router', ->
      expect(App.Router).toHaveBeenCalledOnce()

    it 'should start backbone history', ->
      expect(Backbone.history.start).toHaveBeenCalledOnce()