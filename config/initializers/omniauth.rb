OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :facebook, ENV["FACEBOOK_APP_ID"], ENV["FACEBOOK_SECRET"], {:scope => 'email, public_profile, user_friends', :client_options => {:ssl => {:ca_file => '/usr/lib/ssl/certs/ca-certificates.crt'}}}
  else
    provider :facebook, Rails.application.secrets.facebook_app_id, Rails.application.secrets.facebook_app_secret
  end
end