Rails.application.routes.draw do
  resources :users
    resources :orders, only: [:index, :show, :create, :destroy]

    resources :products

    resources :items
    
    get '/products', to: 'products#index'
    
    get 'home/index'
    
    get 'contact/contact'

    get 'about/about'
    
    post 'contact/thank_you'
    # get 'thank_you'

    get 'landing_pages/index'
    
    
    root 'landing_pages#index'  
end   
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html