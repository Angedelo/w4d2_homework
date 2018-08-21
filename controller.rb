require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative ('./models/rps')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/how_to_play' do
  erb(:how_to_play)
end

get '/rps/:player1/:player2' do
  rps = Rps.new(params[:player1], params[:player2])
  @best_of_three = rps.game()
  erb(:result)
end
