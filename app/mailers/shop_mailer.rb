class ShopMailer < ActionMailer::Base

  def contact(message)
    @message = message
    from = "#{message.name} <#{message.email}>"
    mail(:to => "shop@paciorky.com", :from => from, :subject => message.subject)
  end

end
