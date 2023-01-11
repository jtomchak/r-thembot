# if there is no OAuth application created, create them
if Doorkeeper::Application.count.zero?
  Doorkeeper::Application.create(name: 'iOS client', redirect_uri: '', scopes: '')
  Doorkeeper::Application.create(name: 'Android client', redirect_uri: '', scopes: '')
  Doorkeeper::Application.create(name: 'React', redirect_uri: '', scopes: '')
end

# client_id of the application
# Doorkeeper::Application.find_by(name: "Android client").uid
# client_secret of the application
# Doorkeeper::Application.find_by(name: "Android client").secret
