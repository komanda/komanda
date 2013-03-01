# ActionMailer::Base.smtp_settings = {
#   :port           => ENV['MAILGUN_SMTP_PORT'], 
#   :address        => ENV['MAILGUN_SMTP_SERVER'],
#   :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
#   :password       => ENV['MAILGUN_SMTP_PASSWORD'],
#   :domain         => 'komana.herokuapp.com',
#   :authentication => :plain,
# }
# ActionMailer::Base.delivery_method = :smtp

# ActionMailer::Base.smtp_settings = {
#   :address              => "smtp.gmail.com",
#   :port                 => 587,
#   :domain               => "gmail.com",
#   :user_name            => "komandalife",
#   :password             => "komanda02062012",
#   :authentication       => "plain",
#   :enable_starttls_auto => true
# }
# 
# if Rails.env.development?
#   ActionMailer::Base.default_url_options[:host] = "localhost:3000"
# else
#   ActionMailer::Base.default_url_options[:host] = "komanda.us"
# end
# ActionMailer::Base.default_url_options[:host] = "localhost:3000"
# Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
# ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?