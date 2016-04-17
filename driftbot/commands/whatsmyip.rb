module SlackBotServer
  module Commands
    class Whatsmyip < SlackRubyBot::Commands::Base
    
      match /^whatsmyip$/ do |client,data,match|
        result = HTTParty.get("http://bot.whatismyipaddress.com/")
        client.say(channel: data.channel, text: result)
      end

    end
  end
end