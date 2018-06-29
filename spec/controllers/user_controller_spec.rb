require 'rails_helper'


# i was trying to run a test for the user index page action
describe UsersController, type: :controller do
    describe 'GET #index:' do
        it 'renders users index template' do
        get :index
        expect(response).to be_ok
        expect(response).to render_template('index')
        end
    end

end