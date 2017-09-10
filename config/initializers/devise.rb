Devise.setup do |config|
  config.mailer_sender = Figaro.env.DEVISE_MAIL_SENDER
end