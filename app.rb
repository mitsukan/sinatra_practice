require 'sinatra'
require 'shotgun'

get '/' do
  "hello man!"
end

get '/secret' do
  "Pooplooser69"
end

get '/moop' do
  "<h1> COWWWWOWOWOWOW </h1>"
end

get '/random-pigeon' do
  @name = ["GREG", "OSCAR", "VIKING"].sample
  erb(:index)
end

post '/named-pigeon' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/pigeon-form' do
  "<form action='/named-pigeon' method='post'>
  <input type='text' name='name'></input>
  <input type='submit' value='SUBMIT'></input>
</form>"
end
