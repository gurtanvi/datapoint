class DtpMinute < ApplicationRecord
    before_create :retrieve_value 
    
    def retrieve_value
        require 'uri'
        require 'net/http'

        uri = URI("https://itsmybike-staging.cloud/api/monitoring/datapoints_last_minute")
        req = Net::HTTP::Get.new(uri)
        req['Authorization'] = "Token token=8fe569ac"
        req['Content-Type'] = "application/json"
        res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
            http.request(req)
        end
        self.amount = res.body.to_i
    end
end
