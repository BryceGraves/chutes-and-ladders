Rails.application.routes.draw do
  resources :games do
    resources :players
  end

  root to: redirect(path: '/games', status: 302)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
