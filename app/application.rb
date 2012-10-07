module Bootstrap
  class Application < Rack::URLMap
    def initialize
      super({
        '/' => RootController
      })
    end
  end
end
