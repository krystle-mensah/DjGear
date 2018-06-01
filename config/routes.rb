Rails.application.routes.draw do
	devise_for :users
	resources :users
	resources :orders, only: [:index, :show, :create, :destroy]

    resources :products
    
    # This is called a nested resource. 
    resources :products do
        resources :comments
    end
    # resources :users

    resources :items
    
    get '/products', to: 'products#index'
    
    get 'home/index'
    
    # contact routes 
    get 'contact/contact'    
    post '/contact/thank_you'
    
    get 'about/about'

    get 'landing_pages/index'
    
    
    root 'landing_pages#index'  
end   
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html