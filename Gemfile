source "https://rubygems.org"

gem "sinatra"
gem 'sqlite3'
gem 'pg'
gem 'activerecord'
# Use ActiveRecord as the ORM
gem 'sinatra-activerecord', '~> 2.0'
gem 'sinatra-contrib'
gem 'rake'
#gem 'sinatra-reloader', '~> 1.0'



group :production do
  # Use Postgresql for ActiveRecord
  gem 'pg'
end

group :development, :test do
  # Use SQLite for ActiveRecord
  gem 'sqlite3'
  gem "tux"
end