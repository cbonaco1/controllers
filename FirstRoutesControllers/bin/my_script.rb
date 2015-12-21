require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1/edit'
).to_s

puts RestClient.get(url) #, {:params => {:id => 50, 'foo' => 'bar'}})