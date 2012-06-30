describe 'App.Application', ->
  beforeEach ->
    @app = new App.Application

  describe '.start', ->
    beforeEach ->
      @app.start()

    it 'should load the application router', ->
      expect(true).toBeFalsy()