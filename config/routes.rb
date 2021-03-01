Rails.application.routes.draw do
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books
  resources :users,only: [:show,:index,:edit,:update]
end