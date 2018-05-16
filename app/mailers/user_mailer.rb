class UserMailer < ApplicationMailer
    default from: "krystle.webdev@gmail.com"

    def contact_form(email, name, message)
        @message = message
            mail(from: email,
                to: 'krystle.mensah@gmail.com',
                subject: "A new contact form message from #{name}")
    end
end

