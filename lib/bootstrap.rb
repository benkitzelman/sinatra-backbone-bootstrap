module Bootstrap
  class << self

    def root
      Pathname.new(File.dirname(__FILE__)) + '../'
    end

    def compiled_path
      Pathname.new(root) + 'compiled'
    end

    def environment
      (ENV['RACK_ENV'] || :development).to_sym
    end
  end
end