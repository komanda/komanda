# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV['SENDGRID_USERNAME'],
#   :password => ENV['SENDGRID_PASSWORD'],
#   :domain => "www.komanda.us",
#   :address => "smtp.sendgrid.net",
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }
# ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "komandalife",
  :password             => "komanda02062012",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
# 
# if Rails.env.development?
#   ActionMailer::Base.default_url_options[:host] = "localhost:3000"
# else
#   ActionMailer::Base.default_url_options[:host] = "komanda.us"
# end
# ActionMailer::Base.default_url_options[:host] = "localhost:3000"
# Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
# ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?