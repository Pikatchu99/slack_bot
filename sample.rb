require "slack-notify"
require 'clockwork'
include Clockwork





client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
#client.test

handler do
	client.notify("Hey Work is done !")
end

every(3.minutes, 'frequent.job')
