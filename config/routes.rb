Rails.application.routes.draw do

    post '/rate' => 'rater#create', :as => 'rate'
    	# devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }, controllers: {registrations: "user_registrations"}
    	devise_for :users
        resources :users
    	resources :orders, only: [:index, :show, :create, :destroy]

        # get '/user/sign_up'



        # resources :products
        # This is called a nested resource. this is a defintion 
        resources :products do
            resources :comments
        end

        resources :items
        
        get '/products', to: 'products#index'
        
        get 'home/index'
        
        # contact routes 
        get 'contact/contact'    
        post '/contact/thank_you'
        get '/contact/thank_you' 
        
        get 'about/about'

        get 'landing_pages/index'
        
        
        root 'landing_pages#index'  
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html