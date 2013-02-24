Komanda::Application.routes.draw do

  root :to => 'events#index'
  
  resources :events do
    get :going, on: :member
    get :join, on: :member
    get :rate, on: :member
    get :pictures, on: :member
    resources :comments
  end
  
  resources :suggestions do
    get :star, on: :member
    get :popular, on: :collection
    resources :comments
  end
  
  resources :shares
  
  resources :orders
  
  resources :products
  
  match '/k-stuff' => 'products#index', as: :kstuff
  match '/k-stuff/new' => 'products#new'
  match '/contact' => 'static_pages#contact', as: :contact
  
  match '/auth/:provider/callback' => 'sessions#create'
  match '/auth/failure' => 'parties#index'
  match '/signin' => 'sessions#new', as: :signin
  match '/signout' => 'sessions#destroy', as: :signout
end
