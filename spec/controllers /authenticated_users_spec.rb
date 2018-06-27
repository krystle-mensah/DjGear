require 'rails_helper' 

describe UsersController, type: :controller do
	
# i generated the password randomly not sure if that was correct
	let(:user) { User.create!(email: 'krystle.mensah@gmail.com', password: 'M#CB;7dq]n') }
	
	describe 'GET #show' do

		context 'when a user is not logged in' do
			it 'redirects to login' do
				get :show, params: { id: @user.id }
				expect(response).to redirect_to(new_user_session_path)
			end
        end


		context 'when a user is loaded' do
			before do
				get :show, params: { id: @user.id }
				expect(response).to be_ok
				expect(assigns(:user)).to eq @user
			end
		end

    end
end

# task 6.3
# finished looking at this