Pony.options = {
  :to => 'jessieandjordan2014@gmail.com',
  :via => :smtp,
  :via_options => {
    :address              => 'smtp.sendgrid.net',
    :port                 => '587',
    :domain               => 'heroku.com',
    :user_name            => 'app13328556@heroku.com',#ENV['SENDGRID_USERNAME']
    :password             => 'us1phgpr', #ENV['SENDGRID_PASSWORD']
    :authentication       => :plain,
    :enable_starttls_auto => true
  }
} 
