require 'sinatra'
require_relative 'change_machine.rb'
enable :sessions

get '/' do 
	erb :input
end

post '/change_display' do 

	session[:total] = params[:change_input]

	erb :display :locals => {:total => session[:total]}
end