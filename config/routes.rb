Fiona::Application.routes.draw do

  devise_for :artists
  resources :pictures

  get 'home' => 'menu#home'
  get 'about' => 'menu#about'
  get 'contact' => 'menu#contact'

  resources :galleries, only: [:show]

  root 'menu#home'
end
