require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    "try /reverse, or /friends"
  end

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @reversed_word = params["string"].reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end