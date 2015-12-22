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
    { user: { username: "Jimmy" } }
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
    { contact: { name: "AnotherJennyContact", email: "j@gmail.com", user_id: 2 } }
  )
end

def update_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1'
  ).to_s

  puts RestClient.put(
    url,
    { user: { username: "Sennacy" } }
  )
end

def update_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/1'
  ).to_s

  puts RestClient.patch(
    url,
    { contact: { name: "JennyFromTheBlock" } }
  )
end

def delete_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/1'
  ).to_s

  puts RestClient.delete(
    url
  )
end
# show_all_users
# show_all_contacts
# create_contact
delete_contact
