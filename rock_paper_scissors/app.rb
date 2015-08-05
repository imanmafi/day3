require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/winner') do
  @player1 = params.fetch('player1')
  @winner = @player1.rock_paper_scissors()
  erb(:winner)
end
