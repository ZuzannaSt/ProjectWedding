ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "setyour.mailgun.org",
:port => 587,
:domain => "setyour.mailgun.org",
:user_name => "postmaster@setyour.mailgun.org",
:password => "password",
:authentication => "plain",
:enable_starttls_auto => true
}