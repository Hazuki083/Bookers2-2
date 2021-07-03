Rails.application.routes.draw do
  root to: 'homes#top'

  devise_for :users, ontrollers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
}
  resources :users,only: [:show,:index,:edit,:update]
  resources :books

  get 'home/about' => 'homes#about'
end