Rails.application.routes.draw do
  devise_for :users

  scope module: 'user' do
    root to: 'homes#top'
    get 'about' => 'homes#about'
  end

end
