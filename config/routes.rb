Rails.application.routes.draw do
    get '/products', to: 'products#index'
    
    get 'home/index'
    
    get 'contact/contact'

    # route for  POST form data
    post 'contact/thank_you'

    get 'about/about'
    
    root 'landing_pages#index'
    
    resources :orders, only: [:index, :show, :create, :destroy]

    resources :products

    resources :items
  
    
    

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end   
