class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    @recipes = Recipe.all 
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/recipes' do
    erb :index
  end
end
