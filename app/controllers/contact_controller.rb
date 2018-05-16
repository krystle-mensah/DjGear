class ContactController < ApplicationController
	def contact
	end

	# The simplest way to send an email from the controller is using the mail method which is available to us in the ActionMailer::Base class. We can call this directly from within our controller action and pass it the parameters from the email form:
	def thank_you
		@name = params[:name]
		@email = params[:email]
		@message = params[:message]
		UserMailer.contact_form(@email, @name, @message).deliver_now
	end
end

