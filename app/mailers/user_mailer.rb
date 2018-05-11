# Inside of the UserMailer class, you'll define any of the emails your application will send to users. Let’s start by adding in the contact_form email method, which is essentially just a copy of the same method from the controller:


class UserMailer < ApplicationMailer
    default from: "krystle.webdev@gmail.com"

    def contact_form(email, name, message)
        @message = message
            mail(from: email,
                to: 'krystle.mensah@gmail.com',
                subject: "A new contact form message from #{name}")
    end
end
