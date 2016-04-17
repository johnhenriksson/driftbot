module SlackBotServer
  module Commands
    class Help < SlackRubyBot::Commands::Base
      HELP = <<-EOS
```
I am your friendly driftbot, here to help.

General
-------

@driftbot help               - get this helpful message
@driftbot whoami             - print your username

Lookup
-------
Just typ lookup type:FQDN eg. lookup a:google.com and it returns the IP of the FQDN.

Allowed types are a:,ptr: , mac: and mx:

The lookup service is powered by mxtoolbox.com

Whatsmyip
-------

Just type whatsmyip and you get your current IP, works both with IPv6 and IPv4.
```
EOS
      def self.call(client, data, _match)
        client.say(channel: data.channel, text: [HELP, SlackBotServer::INFO].join("\n"))
        logger.info "HELP: #{client.owner}, user=#{data.user}"
      end
    end
  end
end
