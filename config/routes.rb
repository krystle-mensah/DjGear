Rails.application.routes.draw do
    resources :products
    
    resources :items
    
    root 'home#index'
    
    get 'contact/contact'

    get 'about/about'
  
    
    

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end 
