module SlackBotServer
  module Commands
    class Lookup < SlackRubyBot::Commands::Base
    require 'driftbot/mxtoolbox'
    require 'json'

      match /^lookup (?<type>.*?):(?<target>.*?)$/ do |client, data, match|

        if match[:type] == 'a' || match[:type] == 'mx' || match[:type] == 'ptr'
          if match[:type] != 'ptr'
          target = match[:target].match(/(?<=\|)(.*?)(?=\>)/)
        else
          target = match[:target]
        end
          result = MXToolbox.lookup(match[:type], target)

          client.say(channel: data.channel, text: "#{target} #{result.to_yaml}")
        elsif match[:type] == 'mac'

          response = HTTParty.get("http://macvendors.co/api/#{match[:target]}")
          
          client.say(channel: data.channel, text: response["result"]["company"])
        else
          client.say(channel: data.channel, text: "Wrong lookup type, try again.", gif: 'idiot')
        end 

      end
    end
  end
end
