Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # resources :restaurants, only: [:index, :new, :create, :show, :edit, :update]
  # root "articles#index"
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[new create]
  end

end
