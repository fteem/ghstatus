module GST
  class Message 
    class << self
      def last
        response = GST::Api.last_message
        new(response['status'], response['body'], response['created_on'])
      end

      def recent
        response = GST::Api.recent_messages
        response.collect do |r|
          new(r['status'], r['body'], r['created_on'])
        end
      end
    end

    attr_reader :status, :body, :created_on

    def initialize(status, body, created_on)
      @body       = body
      @status     = status
      @created_on = Date.parse(created_on)
    end
  end
end