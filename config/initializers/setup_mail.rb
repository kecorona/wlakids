ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "wlakids.org",
	:user_name => "notifications",
	:password => "Mawad7fu",
	:authentication => "plain",
	:enable_starttls_auto => true
}
