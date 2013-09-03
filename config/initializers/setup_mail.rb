ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "leads.marketingassociates@gmail.com",
  :password             => "D3troit!",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
