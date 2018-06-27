require 'rails_helper'

describe LandingPagesController, type: :controller do
	context 'GET #index' do
		it 'renders the index template' do
			get :index
			expect(response).to be_ok
			expect(response).to render_template('index')
		end
	end
end

# task 6.3 
# finished looking at this 