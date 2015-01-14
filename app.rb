#!/usr/bin/env ruby

#\ --warn --debug --env prod

require 'yaml'
require 'sinatra'
require 'better_errors'

set :port => 8000

configure :development do
    use BetterErrors::Middleware
    BetterErrors.application_root = __dir__
end

get '/' do
    raise 'oops'
end

get %r{/hello/([\w]+)} do |c|
  "Hello, #{c}!"
end
