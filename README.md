driftbot
================

A slackbot helping you with daily sysadmin tasks such as nslookup and blackklist checks of domains/IP's. Based on slack-bot-server.


### What is slack-bot-server?

A [Grape](http://github.com/ruby-grape/grape) API serving a [Slack Ruby Bot](https://github.com/dblock/slack-ruby-bot) to multiple teams. This is a boilerplate that combines a web server, a RESTful API and multiple instances of [slack-ruby-bot](https://github.com/dblock/slack-ruby-bot). It integrates with the [Slack Platform API](https://medium.com/slack-developer-blog/launch-platform-114754258b91#.od3y71dyo).

### Run Your Own

Install [MongoDB](https://www.mongodb.org/downloads), required to store teams.

[Create a New Application](https://api.slack.com/applications/new) on Slack.

![](images/new.png)

Follow the instructions, note the app's client ID and secret, give the bot a default name, etc. The redirect URL should be the location of your app, for testing purposes use `http://localhost:9292`. For a local deployment create a `.env` file and add `SLACK_CLIENT_ID=...` and `SLACK_CLIENT_SECRET=...` in it. Run `bundle install` and `foreman start`. Navigate to [localhost:5000](http://localhost:5000). Register using the Slack button.

If you deploy to Heroku set `SLACK_CLIENT_ID` and `SLACK_CLIENT_SECRET` via `heroku config:add SLACK_CLIENT_ID=... SLACK_CLIENT_SECRET=...`.

If you would like the command lookup to work you need to add MXTOOLBOX_API_KEY variable to the .env file. You'll find the key on thier website.

### Other examples Using Slack Bot Server

* [slack-gamebot](https://github.com/dblock/slack-gamebot), free service at [playplay.io](http://playplay.io)
* [slack-shellbot](https://github.com/dblock/slack-shellbot), free service at [shell.playplay.io](http://shell.playplay.io)
* [api-explorer](https://github.com/dblock/slack-api-explorer), free service at [api-explorer.playplay.io](http://api-explorer.playplay.io)
* [slack-market](https://github.com/dblock/slack-market), free service at [market.playplay.io](http://market.playplay.io)

### Copyright & License

driftbot Copyright John Henriksson, 2016

slack-bot-server Copyright [Daniel Doubrovkine](http://code.dblock.org), 2015-2016

[MIT License](LICENSE)
