Rails.application.routes.draw do
  
  get 'contact/contact'

  get 'about/about'

  resources :items
  
  
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
