module GST
  class Status
    class << self
      def current
        response = GST::Api.status
        new(response['status'], response['last_updated'])
      end
    end

    attr_reader :status, :updated_on

    def initialize(status, updated_on)
      @status     = status
      @updated_on = Date.parse(updated_on)
    end
  end
end