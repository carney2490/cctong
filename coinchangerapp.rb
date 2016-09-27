require_relative 'coinfunc.rb'
require 'sinatra'

get '/' do
	erb :get_name
end

post '/the_users_name' do
	name = params[:user_name]
	redirect '/cents?users_name=' + name
end

get '/cents' do
	name = params[:users_name]
	erb :get_cents, :locals => {:name => name}
end

post '/cents' do
	cents = params[:cents]
	name = params[:name]
	coins = coin_sorter(cents.to_i)
	# redirect '/results?name=' + name + "&cents=" + cents
	"Well #{name}, you gave me #{cents} cents, and I can return that to you in #{coins}.  Do you have any more cents you would like me to change into coins for you?"
	erb :get_cents, :locals => {:name => name}
end



# get '/results' do
# 	name = params[:name]
# 	cents_received = params[:cents]
# 	erb :get_results, :locals => {:name => name, :cents_received => cents_received}
# end

# post '/results' do
# 	name = params[:name]
# 	cents_recieved = params[:cents]
# 	"#{coins}"
# end
# end