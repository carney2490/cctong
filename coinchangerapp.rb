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
	name = params[:retrieved_name]
	redirect '/results?name=' + name + "&cents=" + cents
end

get '/results' do
	name = params[:name]
	cents_recieved = params[:cents]
	erb :get_results, :locals => {:name => name, :cents => cents}
end

post '/results' do
	name = params[:name]
	cents_recieved.to_i = params[:cents]
	coins
end
# end