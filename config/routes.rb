Fiona::Application.routes.draw do

  devise_for :artists
  resources :pictures

  get 'home' => 'menu#home'
  get 'about' => 'menu#about'
  get 'contact' => 'menu#contact'

  root 'menu#home'
end
