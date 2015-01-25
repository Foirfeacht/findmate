OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1556663711272087', '6b16723e16c35fa758f97baa92dcb720', :image_size => 'large',
  		   :scope => 'email,public_profile,user_friends'
end