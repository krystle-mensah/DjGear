require 'rails_helper'

describe ProductsController, focus: true, type: :controller do
	
	context 'GET #index' do
		it 'renders the index template' do
		get :index
		# checks that the expected template was rendered:
		expect(response).to be_ok
		expect(response).to render_template('index')
		end
	end


end