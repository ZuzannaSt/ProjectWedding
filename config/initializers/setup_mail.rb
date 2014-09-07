ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "smtp.mailgun.org",
:port => 587,
:domain => "sandbox47426.mailgun.org",
:user_name => "postmaster@sandbox47426.mailgun.org",
:password => "8c1olyvjbyo9",
:authentication => "plain",
:enable_starttls_auto => true
}