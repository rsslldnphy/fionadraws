Fiona::Application.routes.draw do

  devise_for :artists
  resources :pictures

  root 'pictures#index'
end
