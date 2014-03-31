class MemberMailer < ActionMailer::Base
  default from: "WLA Notification <notifications@wlakids.org>"

  def default_email(member)
  	@member = recipient
  	# attachments[] = File.read()
  	# attachments.inline[] = File.read()
  	mail :to => recipient, :from => "notifications@wlakids.org", :subject => "WLA Notification"
  end
end

