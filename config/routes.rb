Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#show' # cette route pas avec resources sinon on aurait un :id avec show dans la route
  # get 'search/increment', to: 'searches#create', as: 'search/i'
  get 'search', to: 'results#index', as: 'search' # à la place de resources :results, only: :index
  get 'search_images', to: 'results#image_index', as: 'search_images' # rajoute de la route pour la recherche image
  resources :searches, only: :create
  resources :supports, only: [:destroy]
  resources :charities do
    resources :supports, only: [:create]
  end
  resources :users, only: [:show]
end

# root to: 'pages#home' --> changé pour homes#show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
