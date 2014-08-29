require 'rest_client'
require 'json'

module GHStatus
  class Api
    STATUS_URL   = "https://status.github.com/api/status.json"
    LAST_MSG_URL = "https://status.github.com/api/last-message.json"
    MSGS_URL     = "https://status.github.com/api/messages.json"

    class << self
      def last_message
        JSON.parse(RestClient.get(LAST_MSG_URL))
      end

      def recent_messages
        JSON.parse(RestClient.get(MSGS_URL))
      end

      def status
        JSON.parse(RestClient.get(STATUS_URL))
      end
    end

  end
end