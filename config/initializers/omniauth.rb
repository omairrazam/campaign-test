Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1019144775331-ib8rhd0qhhqv2kgdv6cfflkp2fr7k6cl.apps.googleusercontent.com', 'eH_Edmyeds9D8Mb0ob2FT-wS', scope: 'userinfo.profile,youtube'
  provider :instagram, "0c2c16b42ead405f941b76cc937cc090", "4dec6bb939fe425d9c03ac6beeec068b", scope: 'basic public_content'

end
