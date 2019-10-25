#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/json'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'

set :database_file, 'config/database.yml'

class Client < ActiveRecord::Base

end


class Barber < ActiveRecord::Base
	
end

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end