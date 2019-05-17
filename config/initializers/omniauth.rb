Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1019144775331-ib8rhd0qhhqv2kgdv6cfflkp2fr7k6cl.apps.googleusercontent.com', 'eH_Edmyeds9D8Mb0ob2FT-wS', scope: 'userinfo.profile,youtube'
end