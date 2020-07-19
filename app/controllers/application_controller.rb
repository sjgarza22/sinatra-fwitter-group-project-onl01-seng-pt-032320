require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions unless test?
    set :session_secret, "7b4ca3aea1b27763e3f7079872275c8f"
  end

  get '/' do
    erb :index
  end
end
