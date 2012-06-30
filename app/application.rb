require 'sinatra/base'
require 'sinatra/assetpack'

module Bootstrap
  class Application < Sinatra::Base
    set :sessions, true
    set :root, File.dirname(__FILE__)
    register Sinatra::AssetPack

    assets {
      serve '/js', from: 'js'
      serve '/css', from: 'css'

      js :application, '/js/application.js', [
        '/js/vendor/*.js',
        '/js/**/*.js'
      ]

      css :application, '/css/application.css', [
        '/css/skeleton/*.css',
        '/css/*.scss'
      ]

      js_compression  :uglify
      css_compression :sass
    }

    get '/' do
      erb :index
    end
  end
end
