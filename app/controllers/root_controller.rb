class RootController < Bootstrap::BaseController
  mount_assets

  get '/' do
    erb :index
  end
end