Rails.application.routes.draw do
   devise_for :users, :controllers => {:registrations => 'users/registrations'}
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  resources :products
  resources :subscribers
  root 'page#home'
  
  get 'page/about'

  get 'page/faqs'

  get 'page/contact'
end
