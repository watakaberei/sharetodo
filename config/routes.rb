Rails.application.routes.draw do

  root to: "homes#top"
  get '/about' => 'homes#about'

  devise_for :users

  resources :todos, only: [:new, :create, :index, :show, :edit]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
