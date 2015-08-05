require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/replacement') do
  @sentence = params.fetch('sentence')
  @look_for = params.fetch('look_for')
  @replace_with = params.fetch('replace_with')
  @new_sentence = @sentence.find_and_replace(@look_for, @replace_with)
  erb(:replacement)
end
