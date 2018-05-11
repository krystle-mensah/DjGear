# This is where you'll define the default email address that will show up in the “from” field of emails that get sent from your application. Go ahead and exchange form@example.com with the email address you want to use on your app.

class ApplicationMailer < ActionMailer::Base
  default from: 'krystle.webdev@gmail.com'
  layout 'mailer'
end
