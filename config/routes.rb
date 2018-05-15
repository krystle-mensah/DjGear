Rails.application.routes.draw do
	devise_for :users
	resources :users
	resources :orders, only: [:index, :show, :create, :destroy]

    resources :products

    resources :items
    
    get '/products', to: 'products#index'
    
    get 'home/index'
    
    # contact routes 
    root 'contact#contact'
    get 'contact/contact'    
    post 'contact/thank_you'
    # get 'thank_you'

    get 'about/about'

    get 'landing_pages/index'
    
    
    get 'landing_pages/index'  
end   
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html