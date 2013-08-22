ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "dj.martin.ma",
  :password             => "M1ch1gan!",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

