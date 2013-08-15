
class LeadMailer < ActionMailer::Base
  default from: "dmartin@marketingassociates.com"
 
  def lead_notice(lead)
    @lead = lead
    mail(:to => "#{lead.firstname} <#{lead.email}>", :subject => "Registered")
  end
end

