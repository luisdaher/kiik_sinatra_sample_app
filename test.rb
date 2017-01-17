require 'sinatra/base'
require_relative 'kiik'

class TestApp < Sinatra::Base
  set :sessions, true
  set :foo, 'bar'

  get '/' do
    'Hello world!'
    customer = Kiik::Customer.create({name: "User name", email: "user@email.com"})
    puts customer
  end
end
