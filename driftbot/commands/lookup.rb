module SlackBotServer
  module Commands
    class Lookup < SlackRubyBot::Commands::Base
    require 'driftbot/mxtoolbox'
    require 'json'

      match /^lookup (?<type>.*?):<http:\/\/.*?\|(?<host>.*?)\>$/ do |client, data, match|

        if match[:type] == 'a' || match[:type] == 'mx'
          
          result = MXToolbox.lookup(match[:type], match[:host])
          pretty = result.each {|k, v| print k, " ", v, "\n"}

          client.say(channel: data.channel, text: "#{match[:host]} #{result.to_yaml}")
        else
          client.say(channel: data.channel, text: "Wrong lookup type, try again.", gif: 'idiot')
        end 

      end
    end
  end
end
