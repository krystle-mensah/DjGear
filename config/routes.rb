Rails.application.routes.draw do
    resources :items
    
    get 'contact/contact'

    get 'about/about'
  
    
    root 'home#index'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
