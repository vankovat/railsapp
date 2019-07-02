Rails.application.routes.draw do
  resources :items
  devise_for :users

  resources :apps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index' => 'main#index'

#  root to: redirect('/apps')
end
