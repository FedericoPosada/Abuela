require 'sinatra'

get '/' do
	erb :index
end

post '/responde' do
	if params['phrase'].nil? or params['phrase'].empty? or params['phrase'] != params['phrase'].upcase
		@resp='Habla más duro mijito' 
	else
		@resp="Ahhh si, manzanas!" if params['phrase'] == params['phrase'].upcase
	end
	erb :response
end