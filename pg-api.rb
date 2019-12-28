require 'net/https'
require 'uri'

url = URI('https://api.pagerduty.com/incidents')
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request['Accept'] = 'application/vnd.pagerduty+json;version=2'
#request['Authorization'] = 'Token token=t1xZ43_KN2yv_FWFaJjg'

response = http.request(request)
#puts response.read_body
puts response.code
