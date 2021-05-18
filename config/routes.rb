Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
  namespace :admins do
    resources :inks
    resources :users
    resources :reports
  end
  
  scope module: 'user' do
    root to: 'homes#top'
    get 'about' => 'homes#about'
    resources :inks do
      resources :favorites
    end
    resources :users
    get 'unsubscribe' => 'users#unsubscribe'
    patch 'withdraw' => 'users#withdraw'
    resources :reports
  end

end
