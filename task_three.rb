require 'unirest'

response = Unirest.post "http://jsonip.com",
                        parameters:{"ip":"92.247.236.222","about":"/about","Pro!":"http://getjsonip.com"}

response.code
puts response.body['ip'] # Parsed body
puts response.body['about']
response.raw_body # Unparsed body
