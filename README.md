# README

22 devise confirmable in development
https://github.com/heartcombo/devise/wiki/How-To:-Add-:confirmable-to-Users

23 devise confirmable in production. sendgrid

heroku addons:create sendgrid:starter

environment.rb

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net', 
  :port => '587', 
  :authentication => :plain, 
  :user_name => ENV['SENDGRID_USERNAME'], 
  :password => ENV['SENDGRID_PASSWORD'], 
  :domain => 'heroku.com', 
  :enable_starttls_auto => true 
}

development.rb
  config.action_mailer.default_url_options = { :host => 'https://23298ced9d6644d0a8a3037ed7728331.vfs.cloud9.us-west-1.amazonaws.com' }
  
production.rb
  config.action_mailer.default_url_options = { :host => 'mooc-elearning-platform.herokuapp.com', :protocol => 'https' }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true

  ActionMailer::Base.delivery_method = :smtp
