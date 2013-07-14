Fiona::Application.routes.draw do

  devise_for :artists
  resources :pictures

  get 'home' => 'menu#home'
  get 'about' => 'menu#about'
  get 'contact' => 'menu#contact'

  resources :galleries, only: [] do
    collection do
      get :missed_opportunities
      get :fauna
      get :editorial
      get :book_covers
      get :toothpaste
      get :dogs_dinner
      get :misc
    end
  end

  root 'menu#home'
end
