# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  user_name: 'prsworkshop2019@gmail.com',
  password: 'yLE2ptF7soZZjkG7gA9i9TtzZJmKPsoJnHFCUm',
  domain:'smtp.gmail.com',
  address: 'smtp.gmail.com',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
