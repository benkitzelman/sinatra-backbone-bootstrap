module Bootstrap
  class AssetCompiler
    def call(env)
      p env['PATH_INFO']
      [200, {}, ['ok']]
    end
  end
end