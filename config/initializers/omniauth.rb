OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :google_oauth2, "468339369207-8sticleglp82m90d2pjn8etod6ergsa7.apps.googleusercontent.com", "0G9LiWGyGJtSdXNL9zwOhpsz"

  #provider :google_oauth2, ENV['468339369207-8sticleglp82m90d2pjn8etod6ergsa7.apps.googleusercontent.com'], ENV['0G9LiWGyGJtSdXNL9zwOhpsz']

end