require 'bundler'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'

Zidane = User.new("Zizou@king.fr", 40)
Waldy = User.new("Waldy@fck.com", 75)

meeting = Event.new("30-01-2023 17:50", 60, "noel", [Zidane , Waldy])

puts meeting.to_s


