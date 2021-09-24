require "slack-notify"
require 'clockwork'
include Clockwork





client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/.................")
#client.test

handler do
	client.notify("Hey Work is done !")
end

every(3.minutes, 'frequent.job')
