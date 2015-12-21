require 'addressable/uri'
require 'rest-client'

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users'
  ).to_s

  puts RestClient.post(
    url,
    { user: { name: "Jenny", email: "jennyj@appacademy.io" } }
  )
end

create_user
