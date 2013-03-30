require 'sinatra/base'
require 'sinatra/asset_snack'

module Bootstrap
  class BaseController < Sinatra::Base
    set :sessions, true
    set :root, File.dirname(__FILE__)
    set :public_folder, Proc.new { File.join(Bootstrap.root, "public" ) }
    set :views, File.join(Bootstrap.root, "app", "views" )

    def self.mount_assets
      set :sass,{ :load_paths => [ Bootstrap.root + "assets/stylesheets" ] }

      register Sinatra::AssetSnack
      asset_map '/javascripts/vendor.js', ['assets/javascripts/vendor/**/*.js', 'assets/javascripts/vendor/**/*.coffee']
      asset_map '/javascripts/application.js', ['assets/javascripts/app/**/*.js', 'assets/javascripts/app/**/*.coffee']
      asset_map '/stylesheets/application.css', ['assets/stylesheets/**/*.css', 'assets/stylesheets/**/*.scss']

    end
  end
end
