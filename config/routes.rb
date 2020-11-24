Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#show' # cette route pas avec resources sinon on aurait un :id avec show dans la route
  get 'search', to: 'results#index', as: 'search' # à la place de resources :results, only: :index
  resources :supports, only: [:index, :destroy]
  resources :charities, only: [:show] do
    resources :supports, only: [:create]
  end
end

# root to: 'pages#home' --> changé pour homes#show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
