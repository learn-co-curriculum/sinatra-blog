require 'bundler/setup'
Bundler.require(:default)

require_relative '../app/models/post'

require_relative '../app/controllers/application_controller'
require_relative '../app/controllers/blogs_controller'
require_relative '../app/controllers/users_controller'


ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => 'db/development.sqlite3'
)
