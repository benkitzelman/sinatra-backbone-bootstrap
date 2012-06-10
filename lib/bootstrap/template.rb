require 'tilt'
require 'ostruct'

module Bootstrap
  class Template
    def initialize
    end

    def context
      OpenStruct.new()
    end
    
    def render(file)
      @tpl = Tilt.new(file)
      @tpl.render context
    end
  end
end