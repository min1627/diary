OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1666980640186241', 'f5011a9a8c1d709fb492144477116910'
end
