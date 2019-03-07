ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: 'seekrs.fun@gmail.com',
  password: 'seekadventure',
  authentication: :login,
  enable_starttls_auto: true
}
