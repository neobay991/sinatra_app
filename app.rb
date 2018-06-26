require 'sinatra'

# visit http://localhost:4567

# to kill the server. Find the process ID,
# than in shell type kill <pid>



puts "This is process #{Process.pid}"

get '/' do
  'Hello world!'
end

get '/secret' do
  'This is a secret page'
end

get '/mecrury' do
  'This is the mercury page'
end

get '/venus' do
  '<h2> This is the <b>venus</b> page </h2>'
end

get '/earth' do
  '<em> This is the earth page </em>'
end

get '/html' do
  '<h2> some <em>html</em> syntax </h2>'
end

get '/random_cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

#in browser use querystring ?name:<name>
get '/named_cat' do
  p params
  @random_name = params[:name]
  erb(:index)
end
