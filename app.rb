# Empower my program with SQLite.
require 'rubygems'
require 'bundler/setup'

require "active_record"
require "pry"
require "sinatra"
require "sinatra/reloader"
require 'bcrypt'
require 'pony'
require "active_support/inflector"
require "active_support/core_ext/array/conversions.rb"
require "active_support/core_ext/date/calculations.rb"
require 'active_support/core_ext/object/blank'

configure do
  enable :sessions
end

configure :development do
   require "sqlite3"
  ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'huskers.db')
end

configure :production do 
  require "pg" 
  db = URI.parse(ENV['DATABASE_URL'])

  ActiveRecord::Base.establish_connection(
    :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end

# Empower my program with SQLite.




require_relative "models/contact.rb"





# So that ActiveRecord explains the SQL it's running in the logs.
ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)

#___________________________________________________________________________________________________________


require_relative "controllers/contacts.rb"


# Database
require_relative "database_setup.rb"

