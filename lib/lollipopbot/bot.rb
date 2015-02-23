require 'cinch'

module Lollipopbot
  class Bot
    BOT_NICK = 'lollipopbot'

    def initialize(opts)
      @bot = Cinch::Bot.new do
        def mention(message)
          /^#{BOT_NICK}.+#{message}$/
        end

        configure do |c|
          c.nick = BOT_NICK
          c.server = opts[:server]
          c.port = opts[:port]
          c.channels = opts[:channels]
          c.ssl = Cinch::Configuration::SSL.new(opts[:ssl])
          c.plugins.prefix = //
        end

        on :message, mention('take the wheel') do |m|
          m.reply '!iamlollipop'
        end

        on :message, mention('kickstart the build') do |m|
          m.reply '!start'
        end

        on :message, mention('PR #\d+ - success') do |m|
          m.reply '!start'
        end

        on :message, /PR #\d+ - build_fail/ do |m|
          m.reply 'I have no idea what I\'m doing'
          m.reply '!iamnotlollipop'
        end
      end
    end

    def start
      @bot.start
    end

    class << self
      def start!(opts)
        bot = self.new(opts)
        bot.start
      end
    end
  end
end
