Rails.application.routes.draw do
    get '/products', to: 'products#index'
    
    get 'home/index'
    
    get 'contact/contact'

    get 'about/about'
    
    root 'landing_pages#index'
    
    resources :orders, only: [:index, :show, :create, :destroy]

    resources :products

    resources :items
  
    
    

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end   
