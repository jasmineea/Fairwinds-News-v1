Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
