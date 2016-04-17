ENV['RACK_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require :default, ENV['RACK_ENV']

Dir[File.expand_path('../config/initializers', __FILE__) + '/**/*.rb'].each do |file|
  require file
end

Mongoid.load! File.expand_path('../config/mongoid.yml', __FILE__), ENV['RACK_ENV']

require 'faye/websocket'
require 'slack-ruby-bot'
require 'driftbot/version'
require 'driftbot/info'
require 'driftbot/models'
require 'driftbot/api'
require 'driftbot/app'
require 'driftbot/server'
require 'driftbot/service'
require 'driftbot/commands'
