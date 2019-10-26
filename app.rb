#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/json'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'

set :database_file, 'config/database.yml'

class Client < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3 }
	validates :phone, presence: true
	validates :barber, presence: true
	validates :datestamp, presence: true
	validates :color, presence: true
end


class Barber < ActiveRecord::Base
end


before do
	@barbers = Barber.all

	#sort barbers in descending order:
	#@barbers = Barber.order "created_at DESC"
end



get '/' do
	erb :index	
end

get '/visit' do
	@c = Client.new
	erb :visit
end

post '/visit' do

	@c = Client.new params[:client]
	if @c.save
		erb "<h2>Спасибо, вы записались!</h2>"
	else
		@error = @c.errors.full_messages.first
		erb :visit
	end
end

get '/barber/:id' do
	@barber = Barber.find(params[:id])
	erb :barber
end

get '/bookings' do
	@clients = Client.order('created_at DESC')
	erb :bookings
end

get '/client/:id' do
	@client = Client.find(params[:id])
	erb :client
end

