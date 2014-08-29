require 'rainbow'

module GHStatus
  class CMDHelper
    class << self
      def help
        puts "GHStatus - a command line tool for quick checkup of GitHub's API status."
        puts "Available methods:"
        puts "\tghstatus help     - shows this help message."
        puts "\tghstatus          - shows the current API status."
        puts "\tghstatus last     - shows the last API status as a human readable message."
        puts "\tghstatus recent   - shows the last few API statuses as a human readable messages."
      end

      def print_status status
        title
        puts "Status: #{color(status.status.capitalize)}"
        puts "Updated on #{status.updated_on.strftime("%m-%d-%Y at %I:%M%p")}"
      end

      def print_last_message message
        title
        print_message message
      end

      def print_recent_messages messages
        title
        messages.each do |msg|
          print_message msg
          puts "-" * 32
        end
      end

      private

      def print_message message
        puts "Status: #{color(message.status.capitalize)}"
        puts "Message: #{message.body}"
        puts "Created on #{message.created_on.strftime("%m-%d-%Y at %I:%M%p")}"
      end

      def title
        puts "[GitHub API Status]"
        puts "=" * 19
      end

      def color string
        if string == 'Good'
          Rainbow(string).green
        else
          Rainbow(string).yellow
        end
      end
    end
  end
end