Rails.application.routes.draw do
  resources :games do
    resources :play, only: [ :index ]
    resources :players, only: [ :create, :new, :edit ]
  end

  root to: redirect(path: '/games', status: 302)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
