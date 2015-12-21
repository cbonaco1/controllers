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


def show_all_users
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users'
  ).to_s

  puts RestClient.get(url)

end

def show_all_contacts
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts'
  ).to_s

  puts RestClient.get(url)

end

def create_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts'
  ).to_s

  puts RestClient.post(
    url,
    { contact: { name: "Jenny", email: "jennyj@gmail.com", user_id: 2 } }
  )
end

def update_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/2'
  ).to_s

  puts RestClient.put(
    url,
    { contact: { name: "Sennacy", email: "jennyj@gmail.com", user_id: 2 } }
  )
end
# show_all_users
# show_all_contacts
# create_contact
update_contact
