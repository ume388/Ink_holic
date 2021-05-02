Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  scope module: 'user' do
    root to: 'homes#top'
    get 'about' => 'homes#about'
    resources :inks do
      resources :favorites
    end
    resources :users
  end
  
end
