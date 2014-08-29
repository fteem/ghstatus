module GHStatus
  class Message 
    class << self
      def last
        response = GHStatus::Api.last_message
        new(response['status'], response['body'], response['created_on'])
      end

      def recent
        response = GHStatus::Api.recent_messages
        response.collect do |r|
          new(r['status'], r['body'], r['created_on'])
        end
      end
    end

    attr_reader :status, :body, :created_on

    def initialize(status, body, created_on)
      @body       = body
      @status     = status
      @created_on = DateTime.parse(created_on)
    end
  end
end