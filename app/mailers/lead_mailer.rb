class LeadMailer < ActionMailer::Base
  default from: "dmartin@marketingassociates.com"
 
  def lead_notice(lead)
   
    @lead = lead
	mail_to = Subscription.pluck(:email).join(', ')
    notification = @lead.notifications.create(status: 'Unsent', recipients: mail_to)
	begin
		mail(:to => mail_to, :subject => "A new lead has registered")
    	notification.status = 'Sent'
	rescue Exception => exc
		notification.status = exc.message
	ensure
    	notification.save
	end
  end
end
