Rails.application.routes.draw do
  get '/.well-known/acme-challenge/:id' => 'pages#letsencrypt'

  mount_devise_token_auth_for 'User', at: 'auth'

  resources :users
end
