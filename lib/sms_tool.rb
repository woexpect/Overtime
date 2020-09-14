module SmsTool
    def self.send_sms(number:, message:)
        puts "Sending SMS"
        puts "message [#{message}] to #{number}"
    end
end