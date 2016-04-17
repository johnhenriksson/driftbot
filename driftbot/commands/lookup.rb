module SlackBotServer
  module Commands
    class Lookup < SlackRubyBot::Commands::Base
    require 'driftbot/mxtoolbox'

      match /^lookup <http:\/\/.*?\|(?<host>.*?)\>$/ do |client, data, match|
        
        result = MXToolbox.lookup('a', match[:host])
        
        client.say(channel: data.channel, text: "#{match[:host]} = #{result}")

      end
    end
  end
end
