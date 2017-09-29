Rails.application.routes.draw do
  
  resources :videos, :actors
  devise_for :users
  
  get 'welcome/index'
  get 'welcome/movie_index'
  get 'welcome/tvshow_index'
  get 'videos/select'
  get 'videos/actors'
  post 'actors/search'
  # match ':controller/:action/:id', via: [:get, :post]
  

  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  end
  
  devise_scope :user do
  delete 'logout', to: 'devise/sessions#destroy'
  end

  root 'welcome#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
