require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "<h3>Hello</h3>"
end

get '/secret' do
	"<h1>Omar plays accordion!!</h1>"
end

get '/colours' do
	#a mini style guide to apply to the html below
	'<style>
		.red {
			color: red;
		}
		.blue {
			color: blue;
		}
	</style>
	<h2 class=red>I am red</h2>
	<h2 class=blue>I am blue</h2>'
end

get '/the_one_and_only' do
	"1"
end

get '/random-cat' do
	@cat_name = ["Amigo", "Oscar", "Viking"].sample
	erb(:index)
end

post '/named-cat' do
	p params
	@cat_name = params[:name]
	erb(:index)
end

get '/cat-naming' do
	erb(:form)
end