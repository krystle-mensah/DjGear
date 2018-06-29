require 'rails_helper'

describe UsersController do

	before do
		@user = FactoryBot.create(:user)
		@user2 = FactoryBot.create(:user)
	end #before

    describe 'GET #show' do
		
		context 'when a user is logged in' do
			before do
			    sign_in @user
			end #before
		end #context  

		it 'loads correct user details' do
			get :show, params: { id: @user.id }
			expect(assigns(:user)).to eq @user
			expect(response).to have_http_status(302)
		end #it  

		# it 'cant access other users show page' do
		# 	get :show, params: { id: @user2.id }
		# 	expect(response).to have_http_status(302)
		# 	expect(response).to redirect_to(root_path)
		# end #it      

		context 'when a user is not logged in' do
			it 'redirects to login' do
				get :show, params: { id: @user.id }
				expect(response).to redirect_to(new_user_session_path)
			end #it   
	    end #context

    end #describe GET

end #describe User controller 