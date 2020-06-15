Rails.application.config.middleware.use OmniAuth::Builder do
   provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
   provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
      scope: 'public_profile, email', info_fields: 'email, first_name, last_name'
   provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET']
end
