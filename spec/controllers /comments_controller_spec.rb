require 'rails_helper'

describe CommentsController, type: :controller do
	
	context ' - user is logged in' do
		before do
			skip_confirmation_and_save_users user
			sign_in user
		end
	end 
end