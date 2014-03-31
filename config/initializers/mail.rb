ActionMailer::Base.smtp_settings = {
	:address => "smtp.postmarkapp.com",
	:port => 587,
	:domain => "heroku.com",
	:user_name => "kristin@wlakids.org",
	:password => "f5ARZ528",
	:authentication => "plain",
	:enable_starttls_auto => true
}

ActionMailer::Base.delivery_method = :smtp
