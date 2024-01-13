Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
  resources :users
  namespace :api, defaults: { format: 'json' } do
    resources :schools, only: [:index, :show]
    resources :students, only: [:index, :show, :create, :update, :destroy]
    resources :messages, only: [:index, :show, :create, :update, :destroy]
    resources :metrics, only: [:index, :show, :create, :update, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
