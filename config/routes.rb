Rails.application.routes.draw do
  resources :voyages
  root to: 'pages#home'
end
