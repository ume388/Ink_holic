Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'user' do
    root to: 'homes#top'
    get 'about' => 'homes#about'
  end

end
